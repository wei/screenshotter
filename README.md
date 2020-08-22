# Screenshotter - Screenshot as a Service

Serverless service that generates dynamic screenshots on demand.


## Usage

| parameter | type | description |
| --------- | ---- | ----------- |
| `url` | `string` | **Required**<br/>e.g. `https://wikipedia.org` |
| `selector` | `string` | **css selector**<br/>e.g. `.central-featured` |
| `viewport` | `string` | **viewport size**<br/>default: `1024,768` |
| `full` | `boolean` | **screenshot full page**<br/>default: (empty), set `full=1` to enable |
| `ua` | `string` | **user agent**<br/>e.g. `Googlebot/2.1 (+http://www.google.com/bot.html)` |
| `css` | `string` | **custom css**<br/>e.g. `body{background:lightyellow}` |

### Example

```
/screenshot
  ?url=https://www.google.com/search?q=corona+virus+cases+worldwide
  &viewport=375,812
  &ua=Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1
  &selector=#kp-wp-tab-HealthStats>div:first-child>div:first-child
  &css=[role=heading]:before{content:'Coronavirus ';font-weight:bold}
  &css=[role=heading]:after{content:' (Worldwide)';font-size:80%}
  &css=g-scrolling-carousel{display:none !important}
```
_ℹ️: Don't forget to URL encode query string parameters_

[**Sample Screenshot**](https://screenshotter.vercel.app/screenshot?url=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3Dcorona%2Bvirus%2Bcases%2Bworldwide&viewport=375,812&ua=Mozilla%2F5.0%20(iPhone%3B%20CPU%20iPhone%20OS%2012_0%20like%20Mac%20OS%20X)%20AppleWebKit%2F605.1.15%20(KHTML%2C%20like%20Gecko)%20Version%2F12.0%20Mobile%2F15E148%20Safari%2F604.1&selector=%23kp-wp-tab-HealthStats>div%3Afirst-child>div%3Afirst-child&css=%5Brole%3Dheading%5D%3Abefore%7Bcontent%3A%27Coronavirus%20%27%3Bfont-weight%3Abold%7D&css=%5Brole%3Dheading%5D%3Aafter%7Bcontent%3A%27%20(Worldwide)%27%3Bfont-size%3A80%25%7D&css=g-scrolling-carousel%7Bdisplay%3Anone%20!important%7D)

![](https://screenshotter.vercel.app/screenshot?url=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3Dcorona%2Bvirus%2Bcases%2Bworldwide&viewport=375,812&ua=Mozilla%2F5.0%20(iPhone%3B%20CPU%20iPhone%20OS%2012_0%20like%20Mac%20OS%20X)%20AppleWebKit%2F605.1.15%20(KHTML%2C%20like%20Gecko)%20Version%2F12.0%20Mobile%2F15E148%20Safari%2F604.1&selector=%23kp-wp-tab-HealthStats>div%3Afirst-child>div%3Afirst-child&css=%5Brole%3Dheading%5D%3Abefore%7Bcontent%3A%27Coronavirus%20%27%3Bfont-weight%3Abold%7D&css=%5Brole%3Dheading%5D%3Aafter%7Bcontent%3A%27%20(Worldwide)%27%3Bfont-size%3A80%25%7D&css=g-scrolling-carousel%7Bdisplay%3Anone%20!important%7D)


## Why use this service?

The short answer is that it would take a long time to painstakingly design and run a screenshot service.

That's where `screenshotter.vercel.app` comes in. You can simply pass the url and custom options to our service and it will return screenshots for you on the fly!


## License

- [MIT](https://wei.mit-license.org/) - [@wei](https://github.com/wei)
- [MIT](https://github.com/vercel/og-image/blob/main/LICENSE) - [@vercel](https://github.com/vercel)
