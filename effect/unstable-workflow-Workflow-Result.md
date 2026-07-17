Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.Result

Result of a workflow execution, either a completed exit or a suspended
workflow state.

**Signature**

```ts
type Result<A, E> = Complete<A, E> | Suspended
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Workflow.ts#L482)

Since v4.0.0