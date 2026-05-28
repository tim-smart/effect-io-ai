Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.makeProtocolSocket

Creates a client `Protocol` over the current `Socket`, using the current
`RpcSerialization`, connection hooks, ping timeouts, and the configured retry
policy.

**Signature**

```ts
declare const makeProtocolSocket: (options?: { readonly retryTransientErrors?: boolean | undefined; readonly retryPolicy?: Schedule.Schedule<any, Socket.SocketError> | undefined; }) => Effect.Effect<Protocol["Service"], never, Scope.Scope | RpcSerialization.RpcSerialization | Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L1011)

Since v4.0.0