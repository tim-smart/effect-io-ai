Package: `effect`<br />
Module: `AtomRpc`<br />

## AtomRpc.Service

Creates a `Context.Service` class for an RPC client backed by an atom runtime.

**Details**

The options provide the RPC group, protocol layer, tracing options, request id generation, optional custom client
effect, and runtime factory used by the query and mutation helpers.

**Signature**

```ts
declare const Service: <Self>() => <const Id extends string, Rpcs extends Rpc.Any, ER, RM = RpcClient.Protocol | Rpc.MiddlewareClient<NoInfer<Rpcs>> | Rpc.ServicesClient<NoInfer<Rpcs>>>(id: Id, options: { readonly group: RpcGroup.RpcGroup<Rpcs>; readonly protocol: Layer.Layer<Exclude<NoInfer<RM>, Scope>, ER> | ((get: Atom.AtomContext) => Layer.Layer<Exclude<NoInfer<RM>, Scope>, ER>); readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly generateRequestId?: (() => RequestId) | undefined; readonly disableTracing?: boolean | undefined; readonly makeEffect?: Effect.Effect<RpcClient.RpcClient.Flat<Rpcs, RpcClientError>, never, RM> | undefined; readonly runtime?: Atom.RuntimeFactory | undefined; }) => AtomRpcClient<Self, Id, Rpcs>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRpc.ts#L145)

Since v4.0.0