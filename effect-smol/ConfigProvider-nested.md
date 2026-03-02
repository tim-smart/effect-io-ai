Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.nested

Scopes a provider so that all lookups are prefixed with the given path
segments.

When to use:
- Namespacing config under a prefix like `"app"` or `"database"`.
- Reusing the same provider shape for multiple sub-configs.

Accepts a single string or a full `Path` array. The prefix is prepended
*after* any `mapInput` transformation runs, so ordering matters when
composing with `mapInput` or `constantCase`.

Supports both data-last and data-first calling conventions.

**Example** (Nesting under a prefix)

```ts
import { ConfigProvider } from "effect"

const provider = ConfigProvider.fromEnv({
  env: { APP_HOST: "localhost", APP_PORT: "3000" }
})

// Lookups for ["HOST"] now resolve to ["APP", "HOST"]
const scoped = ConfigProvider.nested(provider, "APP")
```

**See**

- `mapInput` – for arbitrary path transformations

**Signature**

```ts
declare const nested: { (prefix: string | Path): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, prefix: string | Path): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L578)

Since v4.0.0