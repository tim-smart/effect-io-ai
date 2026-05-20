Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.SuspendOnFailure

Causes a workflow to suspend when it encounters any error.

**Details**

The suspended execution can later be resumed with the workflow's `resume` method, for example `MyWorkflow.resume(executionId)`.

**Signature**

```ts
declare const SuspendOnFailure: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L871)

Since v4.0.0