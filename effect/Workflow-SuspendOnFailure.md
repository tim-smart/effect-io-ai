Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.SuspendOnFailure

If you set this annotation to `true` for a workflow, it will suspend if it
encounters any kind of error.

You can then manually resume the workflow later with
`Workflow.resume(executionId)`.

**Signature**

```ts
declare class SuspendOnFailure
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L639)

Since v1.0.0