Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.IsStream

Returns `true` when the RPC with the specified tag has a streaming success
schema, or `never` otherwise.

**Signature**

```ts
type IsStream<R, Tag> = R extends Rpc<
  Tag,
  infer _Payload,
  RpcSchema.Stream<infer _A, infer _E>,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? true :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L680)

Since v4.0.0