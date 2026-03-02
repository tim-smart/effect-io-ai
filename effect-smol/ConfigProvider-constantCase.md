Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.constantCase

Converts all string path segments to `CONSTANT_CASE` before lookup.

When to use:
- Bridging camelCase schema keys to `SCREAMING_SNAKE_CASE` environment
  variables (the most common pattern).

Numeric segments are left unchanged. This is a specialization of
`mapInput`.

**Example** (Resolving camelCase keys to env vars)

```ts
import { ConfigProvider } from "effect"

const provider = ConfigProvider.fromEnv({
  env: { DATABASE_HOST: "localhost" }
}).pipe(ConfigProvider.constantCase)

// path ["databaseHost"] now resolves to env var DATABASE_HOST
```

**See**

- `mapInput` – for arbitrary path transformations

**Signature**

```ts
declare const constantCase: (self: ConfigProvider) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L542)

Since v4.0.0