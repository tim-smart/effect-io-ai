Package: `effect`<br />
Module: `SqlMessageStorage`<br />

## SqlMessageStorage.layer

Layer that provides SQL-backed `MessageStorage` using the default table prefix
and the default snowflake generator.

**Signature**

```ts
declare const layer: Layer.Layer<MessageStorage.MessageStorage, never, SqlClient.SqlClient | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlMessageStorage.ts#L631)

Since v4.0.0