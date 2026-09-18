// backup-trigger.js
//
// InfinityFree's free-subdomain bot wall blocks plain HTTP requests (like
// curl, or any external cron pinger) with a JavaScript challenge page that
// sets a cookie and redirects. A real browser solves this invisibly.
// Playwright launches an actual headless Chromium browser here, which
// executes that JavaScript exactly like a real visitor's browser would —
// so it genuinely gets past the wall, instead of just avoiding it.

const { chromium } = require('playwright');

const BACKUP_URL = process.env.BACKUP_URL;

if (!BACKUP_URL) {
    console.error('BACKUP_URL environment variable is not set. Add it as a repo secret.');
    process.exit(1);
}

(async () => {
    const browser = await chromium.launch();
    const page = await browser.newPage();

    try {
        // The challenge page redirects via location.href after solving
        // itself — wait for that navigation to fully settle before reading
        // the final page's content.
        await page.goto(BACKUP_URL, { waitUntil: 'networkidle', timeout: 30000 });

        const bodyText = await page.evaluate(() => document.body.innerText);
        console.log('Final page content:', bodyText);

        if (bodyText.includes('OK:')) {
            console.log('Backup triggered successfully.');
            await browser.close();
            process.exit(0);
        } else {
            console.error('Did not see the expected "OK:" response — backup may not have run.');
            await browser.close();
            process.exit(1);
        }
    } catch (err) {
        console.error('Error triggering backup:', err.message);
        await browser.close();
        process.exit(1);
    }
})();
