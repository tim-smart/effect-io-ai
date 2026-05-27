Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.RpcMiddleware

The server-side RPC middleware function shape, wrapping a handler effect with
access to request metadata and translating provided services into required
services.

**Signature**

```ts
export interface RpcMiddleware<Provides, E, Requires> {
  (
    effect: Effect.Effect<SuccessValue, E | unhandled, Provides>,
    options: {
      readonly client: Rpc.ServerClient
      readonly requestId: RequestId
      readonly rpc: Rpc.AnyWithProps
      readonly payload: unknown
      readonly headers: Headers
    }
  ): Effect.Effect<SuccessValue, unhandled | E, Requires | Scope>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L74)

Since v4.0.0