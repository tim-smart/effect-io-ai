Package: `effect`<br />
Module: `WorkflowProxyServer`<br />

## WorkflowProxyServer.layerHttpApi

Creates handlers for a workflow HTTP API group, wiring execute, discard, and
resume endpoints to the supplied workflows.

**Signature**

```ts
declare const layerHttpApi: <ApiId extends string, Groups extends HttpApiGroup.Constraint, Identifier extends HttpApiGroup.Identifier<Groups>, const Workflows extends NonEmptyReadonlyArray<Workflow.Any>>(api: HttpApi.HttpApi<ApiId, Groups>, identifier: Identifier, workflows: Workflows) => Layer.Layer<HttpApiGroup.Service<ApiId, Identifier>, never, WorkflowEngine | Workflow.RequirementsHandler<Workflows[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxyServer.ts#L30)

Since v4.0.0