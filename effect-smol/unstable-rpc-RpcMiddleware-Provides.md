Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.Provides

Extracts the services provided by an RPC middleware.

**Signature**

```ts
type Provides<A> = A extends { readonly [TypeId]: { readonly provides: infer P } } ? P : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L169)

Since v4.0.0