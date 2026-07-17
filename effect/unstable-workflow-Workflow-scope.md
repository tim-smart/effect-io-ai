Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.scope

Accesses the workflow scope, which is only closed when the workflow execution fully completes.

**Signature**

```ts
declare const scope: Effect.Effect<Scope.Scope, never, WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Workflow.ts#L771)

Since v4.0.0