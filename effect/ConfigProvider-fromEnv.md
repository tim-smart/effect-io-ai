Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromEnv

Creates a `ConfigProvider` backed by environment variables.

**When to use**

Use to read configuration from `process.env`, which is the default when no
provider is explicitly set, or pass a custom env record for testing or
non-Node runtimes.

**Details**

Path segments are joined with `_` for direct lookup, and env var names are
also split on `_` to build a trie for child key discovery. This means
`DATABASE_HOST=localhost` is accessible at both path `["DATABASE_HOST"]`
and `["DATABASE", "HOST"]`. If all immediate children of a trie node have
purely numeric names, the node is reported as an `Array`; otherwise as a
`Record`.

The default environment merges `process.env` and `import.meta.env` (when
available). Override by passing `{ env: { ... } }`.

Literal empty strings are treated as missing values when loaded as values by
default. Pass `{ preserveEmptyStrings: true }` to keep empty strings as
explicit values. Child discovery still reflects the environment variable
names present in the source.

Never fails with `SourceError` — all lookups are synchronous.

**Example** (Reading from a custom env record)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const provider = ConfigProvider.fromEnv({
  env: {
    DATABASE_HOST: "localhost",
    DATABASE_PORT: "5432"
  }
})

const host = Config.string("HOST").parse(
  provider.pipe(ConfigProvider.nested("DATABASE"))
)

// Effect.runSync(host) // "localhost"
```

**See**

- `fromUnknown` – for JSON objects
- `constantCase` – bridge camelCase keys to SCREAMING_SNAKE_CASE

**Signature**

```ts
declare const fromEnv: (options?: { readonly env?: Record<string, string> | undefined; readonly preserveEmptyStrings?: boolean | undefined; }) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L848)

Since v2.0.0