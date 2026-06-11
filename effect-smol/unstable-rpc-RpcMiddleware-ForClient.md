Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.ForClient

Marker service requirement indicating that a middleware has a client-side
implementation available for an RPC client.

**Signature**

```ts
export interface ForClient<Id> {
  readonly _: unique symbol
  readonly id: Id
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L92)

Since v4.0.0