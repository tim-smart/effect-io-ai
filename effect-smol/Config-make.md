Package: `effect`<br />
Module: `Config`<br />

## Config.make

Creates a `Config` from a raw parsing function.

When to use:
- Building a custom config that cannot be expressed with `schema` or
  the convenience constructors.
- Composing configs programmatically.

The `parse` callback receives a `ConfigProvider` and must return
`Effect<T, ConfigError>`.

**Example** (Custom config that reads two keys)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const hostPort = Config.make((provider) =>
  Effect.all({
    host: Config.string("host").parse(provider),
    port: Config.number("port").parse(provider)
  })
)

const provider = ConfigProvider.fromUnknown({ host: "localhost", port: 3000 })
// Effect.runSync(hostPort.parse(provider))
// { host: "localhost", port: 3000 }
```

**See**

- `schema` – higher-level constructor using Schema codecs

**Signature**

```ts
declare const make: <T>(parse: (provider: ConfigProvider.ConfigProvider) => Effect.Effect<T, ConfigError>) => Config<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L214)

Since v4.0.0