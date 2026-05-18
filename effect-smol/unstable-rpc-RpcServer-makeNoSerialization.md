Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeNoSerialization

Creates an RPC server for an already-decoded message channel, running
handlers for a group and sending decoded server responses through
`onFromServer`.

**Signature**

```ts
declare const makeNoSerialization: <Rpcs extends Rpc.Any>(group: RpcGroup.RpcGroup<Rpcs>, options: { readonly onFromServer: (response: FromServer<Rpcs>) => Effect.Effect<void>; readonly disableTracing?: boolean | undefined; readonly disableSpanPropagation?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly disableClientAcks?: boolean | undefined; readonly concurrency?: number | "unbounded" | undefined; readonly disableFatalDefects?: boolean | undefined; }) => Effect.Effect<RpcServer<Rpcs>, never, Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L107)

Since v4.0.0