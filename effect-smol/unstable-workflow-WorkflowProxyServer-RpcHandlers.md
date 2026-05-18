Package: `effect`<br />
Module: `WorkflowProxyServer`<br />

## WorkflowProxyServer.RpcHandlers

Union of RPC handler services required to serve the generated workflow
execute, discard, and resume RPCs.

**Signature**

```ts
type RpcHandlers<Workflows, Prefix> = Workflows extends Workflow.Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ? Rpc.Handler<`${Prefix}${_Name}`> | Rpc.Handler<`${Prefix}${_Name}Discard`> | Rpc.Handler<`${Prefix}${_Name}Resume`>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxyServer.ts#L161)

Since v4.0.0