Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromUnknown

Creates a `ConfigProvider` backed by an in-memory JavaScript value
(typically a parsed JSON object).

When to use:
- Unit / integration tests where you want deterministic config without
  touching the environment.
- Embedding config directly in code or reading a JSON file.

Path traversal follows standard JS rules: string segments index into
object keys, numeric segments index into arrays. Returns `undefined`
for any path that cannot be resolved. Never fails with `SourceError`.

Primitive values (`number`, `boolean`, `bigint`) are stringified via
`String(...)`.

**Example** (Providing config from a plain object)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const provider = ConfigProvider.fromUnknown({
  database: {
    host: "localhost",
    port: 5432
  }
})

const host = Config.string("host").parse(
  provider.pipe(ConfigProvider.nested("database"))
)

// Effect.runSync(host) // "localhost"
```

**See**

- `fromEnv` – for environment variables
- `make` – for custom backing stores

**Signature**

```ts
declare const fromUnknown: (root: unknown) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L715)

Since v4.0.0