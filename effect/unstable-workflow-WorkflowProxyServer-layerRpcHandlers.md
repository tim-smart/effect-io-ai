Package: `effect`<br />
Module: `WorkflowProxyServer`<br />

## WorkflowProxyServer.layerRpcHandlers

Creates RPC handlers for the supplied workflows, wiring execute, discard,
and resume RPCs to workflow operations.

**Signature**

```ts
declare const layerRpcHandlers: <const Workflows extends NonEmptyReadonlyArray<Workflow.Any>, const Prefix extends string = "">(workflows: Workflows, options?: { readonly prefix?: Prefix; }) => Layer.Layer<RpcHandlers<Workflows[number], Prefix>, never, WorkflowEngine | Workflow.RequirementsHandler<Workflows[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/WorkflowProxyServer.ts#L96)

Since v4.0.0