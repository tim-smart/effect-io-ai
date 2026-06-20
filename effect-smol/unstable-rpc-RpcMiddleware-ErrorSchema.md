Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.ErrorSchema

Extracts the error schema associated with an RPC middleware.

**Signature**

```ts
type ErrorSchema<A> = A extends { readonly [TypeId]: { readonly error: infer E } }
  ? E extends Schema.Top ? E : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L195)

Since v4.0.0