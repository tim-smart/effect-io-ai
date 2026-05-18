Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.ApplyServices

Applies a middleware's service transformation to an RPC environment by
removing services the middleware provides and adding services it requires.

**Signature**

```ts
type ApplyServices<A, R> = Exclude<R, Provides<A>> | Requires<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L204)

Since v4.0.0