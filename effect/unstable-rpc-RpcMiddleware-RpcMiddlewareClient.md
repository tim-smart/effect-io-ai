Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.RpcMiddlewareClient

The client-side RPC middleware function shape, allowing outgoing requests to
be inspected or modified before calling `next`.

**Signature**

```ts
export interface RpcMiddlewareClient<E, CE, R> {
  (options: {
    readonly rpc: Rpc.AnyWithProps
    readonly request: Request<Rpc.Any>
    readonly next: (request: Request<Rpc.Any>) => Effect.Effect<SuccessValue, unhandled | E>
  }): Effect.Effect<SuccessValue, unhandled | E | CE, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMiddleware.ts#L78)

Since v4.0.0