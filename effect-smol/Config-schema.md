Package: `effect`<br />
Module: `Config`<br />

## Config.schema

Creates a `Config<T>` from a `Schema.Codec`.

When to use:
- Reading structured or validated config (structs, arrays, unions, branded
  types, etc.).
- All convenience constructors (`string`, `number`, …) delegate to this.

The optional `path` sets the root path segment(s) for the config lookup.
Pass a single string for a flat key or an array for nested paths.

The codec is used to decode the raw `StringTree` produced by the provider
into `T`. Schema validation errors are wrapped in `ConfigError`.

**Example** (Reading a structured config)

```ts
import { Config, ConfigProvider, Effect, Schema } from "effect"

const DbConfig = Config.schema(
  Schema.Struct({
    host: Schema.String,
    port: Schema.Int
  }),
  "db"
)

const provider = ConfigProvider.fromUnknown({
  db: { host: "localhost", port: 5432 }
})

// Effect.runSync(DbConfig.parse(provider))
// { host: "localhost", port: 5432 }
```

**See**

- `string` / `number` / `boolean` – shortcuts for
  single-value configs

**Signature**

```ts
declare const schema: <T, E>(codec: Schema.Codec<T, E>, path?: string | ConfigProvider.Path) => Config<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L675)

Since v4.0.0