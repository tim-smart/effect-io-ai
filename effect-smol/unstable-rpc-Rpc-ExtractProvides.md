Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ExtractProvides

Extracts the services provided by middleware on the RPC with the specified
tag.

**Signature**

```ts
type ExtractProvides<R, Tag> = R extends Rpc<
  Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? RpcMiddleware.Provides<_Middleware["Identifier"]> :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L697)

Since v4.0.0