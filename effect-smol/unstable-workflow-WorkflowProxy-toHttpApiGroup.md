Package: `effect`<br />
Module: `WorkflowProxy`<br />

## WorkflowProxy.toHttpApiGroup

Derives an `HttpApiGroup` from a list of workflows.

```ts
import { Layer, Schema } from "effect"
import { HttpApi, HttpApiBuilder } from "effect/unstable/httpapi"
import {
  Workflow,
  WorkflowProxy,
  WorkflowProxyServer
} from "effect/unstable/workflow"

const EmailWorkflow = Workflow.make({
  name: "EmailWorkflow",
  payload: {
    id: Schema.String,
    to: Schema.String
  },
  idempotencyKey: ({ id }) => id
})

const myWorkflows = [EmailWorkflow] as const

// Use WorkflowProxy.toHttpApiGroup to create a `HttpApiGroup` from the
// workflows
class MyApi extends HttpApi.make("api")
  .add(WorkflowProxy.toHttpApiGroup("workflows", myWorkflows))
{}

// Use WorkflowProxyServer.layerHttpApi to create a layer that implements the
// workflows HttpApiGroup
const ApiLayer = HttpApiBuilder.layer(MyApi).pipe(
  Layer.provide(
    WorkflowProxyServer.layerHttpApi(MyApi, "workflows", myWorkflows)
  )
)
```

**Signature**

```ts
declare const toHttpApiGroup: <const Name extends string, const Workflows extends NonEmptyReadonlyArray<Workflow.Any>>(name: Name, workflows: Workflows) => HttpApiGroup.HttpApiGroup<Name, ConvertHttpApi<Workflows[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxy.ts#L133)

Since v4.0.0