Package: `effect`<br />
Module: `Config`<br />

## Config.ConfigError

The error type produced when config loading or validation fails.

**When to use**

- Match on `error.cause._tag` to distinguish source failures from
  validation failures.
- Pass to `fail` to create a Config that always errors.

**Details**

Wraps either:
- A `SourceError` — the provider could not read data (I/O failure).
- A `SchemaError` — the data was found but did not match the schema
  (wrong type, out of range, missing key, etc.).

**See**

- `orElse` – recover from a ConfigError
- `withDefault` – provide a fallback for missing-data errors

**Signature**

```ts
declare class ConfigError { constructor(cause: SourceError | Schema.SchemaError) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L135)

Since v4.0.0