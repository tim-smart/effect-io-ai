Package: `effect`<br />
Module: `Config`<br />

## Config.url

Creates a config for a `URL` value parsed from a string.

Fails if the string cannot be parsed by the `URL` constructor.

**Example** (Reading a URL)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const url = yield* Config.url("URL")
  console.log(url)
})

const provider = ConfigProvider.fromEnv({
  env: {
    URL: "https://example.com"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output:
// URL {
//   href: 'https://example.com/',
//   origin: 'https://example.com',
//   protocol: 'https:',
//   username: '',
//   password: '',
//   host: 'example.com',
//   hostname: 'example.com',
//   port: '',
//   pathname: '/',
//   search: '',
//   searchParams: URLSearchParams {},
//   hash: ''
// }
```

**Signature**

```ts
declare const url: (name?: string) => Config<URL>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1217)

Since v4.0.0