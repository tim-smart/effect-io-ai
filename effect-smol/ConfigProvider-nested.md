Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.nested

Scopes a provider so that all lookups are prefixed with the given path
segments.

**When to use**

Use to namespace config under a prefix like `"app"` or `"database"`, or
reuse the same provider shape for multiple sub-configs.

**Details**

Accepts a single string or a full `Path` array. For providers composed with
`orElse`, the prefix is applied to each operand. Supports both
data-last and data-first calling conventions.

**Gotchas**

Ordering matters when composing with `mapInput` or
`constantCase`. Later provider transformations run after earlier ones:
a later `nested` becomes the outer prefix, and a later `mapInput` sees the
whole path produced by previous transformations.

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

Since v2.0.0