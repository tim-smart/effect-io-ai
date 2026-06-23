Package: `effect`<br />
Module: `RpcSchema`<br />

## RpcSchema.isStreamSchema

Returns `true` when a schema is an RPC stream schema created by
`RpcSchema.Stream`.

**Signature**

```ts
declare const isStreamSchema: (schema: Schema.Constraint) => schema is Stream<Schema.Top, Schema.Top>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSchema.ts#L29)

Since v4.0.0