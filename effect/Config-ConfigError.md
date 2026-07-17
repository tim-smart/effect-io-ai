Package: `effect`<br />
Module: `Config`<br />

## Config.ConfigError

Represents the error type produced when config loading or validation fails.

**When to use**

Use when you need to inspect config loading or validation failures.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L70)

Since v4.0.0