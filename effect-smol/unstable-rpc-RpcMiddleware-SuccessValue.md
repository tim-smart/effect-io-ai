Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.SuccessValue

Marker success type used by RPC middleware to represent successful completion
without exposing the handler's concrete success value.

**Signature**

```ts
export interface SuccessValue {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L94)

Since v4.0.0