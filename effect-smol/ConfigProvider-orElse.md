Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.orElse

Returns a provider that falls back to `that` when `self` returns `undefined`
for a path.

**When to use**

Use this to layer multiple config sources, such as env vars plus a defaults
file, or to provide partial overrides on top of a base config.

**Details**

Supports both data-last and data-first calling conventions.

**Gotchas**

The fallback only runs when the path is not found (`undefined`). A
`SourceError` from `self` is not caught; it propagates immediately.

**Example** (Falling back to a default provider)

```ts
import { ConfigProvider } from "effect"

const envProvider = ConfigProvider.fromEnv({
  env: { HOST: "prod.example.com" }
})
const defaults = ConfigProvider.fromUnknown({ HOST: "localhost", PORT: "3000" })

const combined = ConfigProvider.orElse(envProvider, defaults)
```

**See**

- `layerAdd` – install a fallback provider via a Layer

**Signature**

```ts
declare const orElse: { (that: ConfigProvider): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, that: ConfigProvider): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L483)

Since v2.0.0