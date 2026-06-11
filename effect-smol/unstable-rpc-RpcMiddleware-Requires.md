Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.Requires

Extracts the services required by an RPC middleware.

**Signature**

```ts
type Requires<A> = A extends { readonly [TypeId]: { readonly requires: infer R } } ? R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L177)

Since v4.0.0