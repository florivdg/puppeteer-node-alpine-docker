import puppeteer from 'puppeteer'

const browser = await puppeteer.launch({
  headless: true,
  args:
    process.env.NODE_ENV === 'production'
      ? [
          '--disable-gpu',
          '--disable-dev-shm-usage',
          '--disable-setuid-sandbox',
          '--no-sandbox',
        ]
      : [],
})

const page = await browser.newPage()
await page.goto('https://www.tmt.de')
await page.setViewport({ width: 1280, height: 720 })
await page.screenshot({ path: './screenshot_tmt.png' })

await page.close()
await browser.close()
