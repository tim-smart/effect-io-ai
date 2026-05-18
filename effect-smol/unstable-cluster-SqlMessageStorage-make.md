Package: `effect`<br />
Module: `SqlMessageStorage`<br />

## SqlMessageStorage.make

Creates a SQL-backed `MessageStorage` implementation, running its migrations
and using the optional table prefix.

**Signature**

```ts
declare const make: (options?: { readonly prefix?: string | undefined; }) => Effect.Effect<MessageStorage.MessageStorage["Service"], never, SqlClient.SqlClient | Snowflake.Generator>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlMessageStorage.ts#L48)

Since v4.0.0