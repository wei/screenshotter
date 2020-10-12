![screenshotter](https://socialify.git.ci/wei/screenshotter/png?description=1&pattern=Plus&stargazers=0&theme=Light)

Serverless service that generates dynamic screenshots on demand.


## Usage

| parameter | type | description |
| --------- | ---- | ----------- |
| `url` | `string` | **Required**<br/>e.g. `https://wikipedia.org` |
| `selector` | `string` | **css selector**<br/>e.g. `.central-featured` |
| `viewport` | `string` | **viewport size**<br/>default: `1024,768` |
| `dpr` | `integer` | **device scale factor**<br/>default: `1` |
| `full` | `boolean` | **screenshot full page**<br/>default: (empty), set `full=1` to enable |
| `ua` | `string` | **user agent**<br/>e.g. `Googlebot/2.1 (+http://www.google.com/bot.html)` |
| `css` | `string` | **custom css**<br/>e.g. `body{background:lightyellow}` |
| `filetype` | `string` | **filetype**<br/>default: `png`, or `jpeg` |

_ℹ️ Don't forget to URL encode query string parameters_

### Examples

#### Latest Featured News
```
/screenshot
  ?url=https://yahoo.com
  &selector=[data-yaft-module=stream_item_1]>div
```
[**Sample Screenshot**](https://screenshotter.git.ci/screenshot?url=https://yahoo.com&selector=[data-yaft-module=stream_item_1]%3Ediv)

![](https://screenshotter.git.ci/screenshot?url=https://yahoo.com&selector=[data-yaft-module=stream_item_1]%3Ediv)


## Development

First, `npm install && npm run build`.

### Option 1: Vercel

1. Setup vercel project

    ```
    vercel
    ```

1. Start development server

    ```
    vercel dev
    ```

### Option 2: HTTP Server using `micro`

```
npm start
```

### Option 3: Docker

```
docker-compose up
```


## License

- [MIT](https://wei.mit-license.org/) - [@wei](https://github.com/wei)
- [MIT](https://github.com/vercel/og-image/blob/main/LICENSE) - [@vercel](https://github.com/vercel)
