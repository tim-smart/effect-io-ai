Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.constantCase

Converts all string path segments to `CONSTANT_CASE` before lookup.

**When to use**

Use this to bridge camelCase schema keys to `SCREAMING_SNAKE_CASE`
environment variables.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L570)

Since v2.0.0