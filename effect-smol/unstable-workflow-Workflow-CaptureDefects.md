Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.CaptureDefects

If you set this annotation to `true` for a workflow, it will capture defects
and include them in the result of the workflow or it's activities.

By default, this is set to `true`, meaning that defects will be captured.

**Signature**

```ts
declare const CaptureDefects: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L750)

Since v4.0.0