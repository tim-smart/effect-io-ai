Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.AddMiddleware

Returns an RPC type with additional middleware and the corresponding
middleware service requirements applied.

**Signature**

```ts
type AddMiddleware<R, Middleware> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Rpc<
    _Tag,
    _Payload,
    _Success,
    _Error,
    _Middleware | Middleware,
    RpcMiddleware.ApplyServices<Middleware["Identifier"], _Requires>
  > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L603)

Since v4.0.0