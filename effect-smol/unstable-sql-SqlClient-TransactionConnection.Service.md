Package: `effect`<br />
Module: `SqlClient`<br />

## SqlClient.TransactionConnection.Service

Service payload stored during a transaction, containing the active
connection and nested transaction depth.

**Signature**

```ts
type Service = readonly [conn: Connection.Connection, depth: number]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlClient.ts#L332)

Since v4.0.0