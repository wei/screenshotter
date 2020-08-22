# Screenshotter - Screenshot as a Service

Serverless service that generates dynamic screenshots on demand.


## Usage

| parameter | type | description |
| --------- | ---- | ----------- |
| `url` | `string` | **Required**<br/>e.g. `https://wikipedia.org` |
| `selector` | `string` | **css selector**<br/>e.g. `.central-featured` |
| `size` | `string` | **viewport size**<br/>default: `1024,768` |
| `full` | `boolean` | **screenshot full page**<br/>default: `false`, set `full=1` to enable |
| `ua` | `string` | **user agent**<br/>e.g. `Googlebot/2.1 (+http://www.google.com/bot.html)` |
| `css` | `string` | **custom css**<br/>e.g. `body{background:lightyellow}` |

### Example

```
/screenshot
  ?url=https%3A%2F%2Fnews.google.com        # https://news.google.com
  &size=375,812                             # iPhone X Screen Size
  &selector=article                         # CSS Selector
  &css=article%7Bbackground%3Alightblue%3Bpadding%3A5px%3Bborder%3A3px%20solid%20gray%3B%7D
                                            # article{background:lightblue;padding:5px;border:3px solid gray;}
```

[![Preview](https://screenshotter.vercel.app/screenshot?url=https%3A%2F%2Fnews.google.com&size=375,812&selector=article&css=article%7Bbackground%3Alightblue%3Bpadding%3A5px%3Bborder%3A3px%20solid%20gray%3B%7D)](https://screenshotter.vercel.app/screenshot?url=https%3A%2F%2Fnews.google.com&size=375,812&selector=article&css=article%7Bbackground%3Alightblue%3Bpadding%3A5px%3Bborder%3A3px%20solid%20gray%3B%7D)


## Why use this service?

The short answer is that it would take a long time to painstakingly design and run a screenshot service.

That's where `screenshotter.vercel.app` comes in. You can simply pass the url and custom options to our service and it will return screenshots for you on the fly!


## License

- [MIT](https://wei.mit-license.org/) - [@wei](https://github.com/wei)
- [MIT](https://github.com/vercel/og-image/blob/main/LICENSE) - [@vercel](https://github.com/vercel)
