Package: `@effect/workflow`<br />
Module: `WorkflowProxy`<br />

## WorkflowProxy.toHttpApiGroup

Derives an `HttpApiGroup` from a list of workflows.

```ts
import { HttpApi, HttpApiBuilder } from "@effect/platform"
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

// Use WorkflowProxy.toHttpApiGroup to create a `HttpApiGroup` from the
// workflows
class MyApi extends HttpApi.make("api")
  .add(WorkflowProxy.toHttpApiGroup("workflows", myWorkflows))
{}

// Use WorkflowProxyServer.layerHttpApi to create a layer that implements the
// workflows HttpApiGroup
const ApiLayer = HttpApiBuilder.api(MyApi).pipe(
  Layer.provide(WorkflowProxyServer.layerHttpApi(MyApi, "workflows", myWorkflows))
)
```

**Signature**

```ts
declare const toHttpApiGroup: <const Name extends string, const Workflows extends NonEmptyReadonlyArray<Workflow.Any>>(name: Name, workflows: Workflows) => HttpApiGroup.HttpApiGroup<Name, ConvertHttpApi<Workflows[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/WorkflowProxy.ts#L122)

Since v1.0.0