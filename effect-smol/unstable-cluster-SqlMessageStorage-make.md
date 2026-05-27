Package: `effect`<br />
Module: `SqlMessageStorage`<br />

## SqlMessageStorage.make

Creates a SQL-backed `MessageStorage` implementation, running its migrations
and using the optional table prefix.

**When to use**

Use when you need the SQL-backed `MessageStorage` service directly, such as
when composing a custom layer or providing your own `Snowflake.Generator`.

**Details**

The optional `prefix` controls the table names for messages, replies, and
migrations; when omitted, `cluster` is used.

**Gotchas**

Changing `prefix` after deployment points the runtime at a different set of
tables, including the migration history table.

**See**

- `layer` for a ready-made layer using the default prefix and generator
- `layerWith` for a ready-made layer with a custom table prefix

**Signature**

```ts
declare const make: (options?: { readonly prefix?: string | undefined; }) => Effect.Effect<MessageStorage.MessageStorage["Service"], never, SqlClient.SqlClient | Snowflake.Generator>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlMessageStorage.ts#L88)

Since v4.0.0