Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.make

Creates a schema-aware RPC client for a group using the current client
`Protocol`, encoding requests and decoding server responses.

**Signature**

```ts
declare const make: <Rpcs extends Rpc.Any, const Flatten extends boolean = false>(group: RpcGroup.RpcGroup<Rpcs>, options?: { readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly generateRequestId?: (() => RequestId) | undefined; readonly disableTracing?: boolean | undefined; readonly flatten?: Flatten | undefined; } | undefined) => Effect.Effect<Flatten extends true ? RpcClient.Flat<Rpcs, RpcClientError> : RpcClient<Rpcs, RpcClientError>, never, Protocol | Rpc.MiddlewareClient<Rpcs> | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcClient.ts#L627)

Since v4.0.0