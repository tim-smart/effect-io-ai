Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.scope

Accesses the workflow scope.

The workflow scope is only closed when the workflow execution fully
completes.

**Signature**

```ts
declare const scope: Effect.Effect<Scope.Scope, never, WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L660)

Since v1.0.0