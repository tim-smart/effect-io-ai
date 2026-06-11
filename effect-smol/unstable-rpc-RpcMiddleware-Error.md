Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.Error

Extracts the decoded error type produced by an RPC middleware.

**Signature**

```ts
type Error<A> = ErrorSchema<A>["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L204)

Since v4.0.0