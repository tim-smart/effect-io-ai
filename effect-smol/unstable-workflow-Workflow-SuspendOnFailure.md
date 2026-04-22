Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.SuspendOnFailure

If you set this annotation to `true` for a workflow, it will suspend if it
encounters any kind of error.

You can then manually resume the workflow later with
`Workflow.resume(executionId)`.

**Signature**

```ts
declare const SuspendOnFailure: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L774)

Since v4.0.0