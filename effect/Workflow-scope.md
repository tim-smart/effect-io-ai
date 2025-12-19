Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.scope

Accesses the workflow scope.

The workflow scope is only closed when the workflow execution fully
completes.

**Signature**

```ts
declare const scope: Effect.Effect<Scope.Scope, never, WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L604)

Since v1.0.0