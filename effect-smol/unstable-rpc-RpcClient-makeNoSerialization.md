Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.makeNoSerialization

Creates an RPC client for an already-decoded message channel, returning the
client API together with a `write` function for delivering server messages
back to the client.

**Signature**

```ts
declare const makeNoSerialization: <Rpcs extends Rpc.Any, E, const Flatten extends boolean = false>(group: RpcGroup.RpcGroup<Rpcs>, options: { readonly onFromClient: (options: { readonly message: FromClient<Rpcs>; readonly context: Context.Context<never>; readonly discard: boolean; }) => Effect.Effect<void, E>; readonly supportsAck?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly generateRequestId?: (() => RequestId) | undefined; readonly disableTracing?: boolean | undefined; readonly flatten?: Flatten | undefined; }) => Effect.Effect<{ readonly client: Flatten extends true ? RpcClient.Flat<Rpcs, E> : RpcClient<Rpcs, E>; readonly write: (message: FromServer<Rpcs>) => Effect.Effect<void>; }, never, Scope.Scope | Rpc.MiddlewareClient<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L217)

Since v4.0.0