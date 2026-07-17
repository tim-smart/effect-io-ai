Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.Any

An erased server-side RPC middleware function, useful when the concrete
provided services, errors, and requirements are not needed.

**Signature**

```ts
export interface Any {
  (
    effect: Effect.Effect<SuccessValue, any, any>,
    options: {
      readonly client: Rpc.ServerClient
      readonly requestId: RequestId
      readonly rpc: Rpc.AnyWithProps
      readonly payload: unknown
      readonly headers: Headers
    }
  ): Effect.Effect<SuccessValue, any, any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMiddleware.ts#L105)

Since v4.0.0