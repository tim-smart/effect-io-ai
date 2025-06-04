Package: `@effect/workflow`<br />
Module: `WorkflowProxy`<br />

## WorkflowProxy.toRpcGroup

Derives an `RpcGroup` from a list of workflows.

```ts
import { RpcServer } from "@effect/rpc"
import { Workflow, WorkflowProxy, WorkflowProxyServer } from "@effect/workflow"
import { Layer, Schema } from "effect"

const EmailWorkflow = Workflow.make({
  name: "EmailWorkflow",
  payload: {
    id: Schema.String,
    to: Schema.String
  },
  idempotencyKey: ({ id }) => id
})

const myWorkflows = [EmailWorkflow] as const

// Use WorkflowProxy.toRpcGroup to create a `RpcGroup` from the
// workflows
class MyRpcs extends WorkflowProxy.toRpcGroup(myWorkflows) {}

// Use WorkflowProxyServer.layerRpcHandlers to create a layer that implements
// the rpc handlers
const ApiLayer = RpcServer.layer(MyRpcs).pipe(
  Layer.provide(WorkflowProxyServer.layerRpcHandlers(myWorkflows))
)
```

**Signature**

```ts
declare const toRpcGroup: <const Workflows extends NonEmptyReadonlyArray<Workflow.Any>, const Prefix extends string = "">(workflows: Workflows, options?: { readonly prefix?: Prefix | undefined; }) => RpcGroup.RpcGroup<ConvertRpcs<Workflows[number], Prefix>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/WorkflowProxy.ts#L44)

Since v1.0.0