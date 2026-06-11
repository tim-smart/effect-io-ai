Package: `effect`<br />
Module: `WorkflowProxyServer`<br />

## WorkflowProxyServer.layerHttpApi

Creates handlers for a workflow HTTP API group, wiring execute, discard, and
resume endpoints to the supplied workflows.

**Signature**

```ts
declare const layerHttpApi: <ApiId extends string, Groups extends HttpApiGroup.Any, Name extends HttpApiGroup.Name<Groups>, const Workflows extends NonEmptyReadonlyArray<Workflow.Any>>(api: HttpApi.HttpApi<ApiId, Groups>, name: Name, workflows: Workflows) => Layer.Layer<HttpApiGroup.ApiGroup<ApiId, Name>, never, WorkflowEngine | Workflow.RequirementsHandler<Workflows[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxyServer.ts#L30)

Since v4.0.0