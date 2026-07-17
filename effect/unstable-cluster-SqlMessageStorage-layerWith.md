Package: `effect`<br />
Module: `SqlMessageStorage`<br />

## SqlMessageStorage.layerWith

Layer that provides SQL-backed `MessageStorage` using a custom table prefix.

**Signature**

```ts
declare const layerWith: (options: { readonly prefix?: string | undefined; }) => Layer.Layer<MessageStorage.MessageStorage, never, SqlClient.SqlClient | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SqlMessageStorage.ts#L676)

Since v4.0.0