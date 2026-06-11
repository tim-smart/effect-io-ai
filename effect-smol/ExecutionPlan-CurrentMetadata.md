Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.CurrentMetadata

Context reference containing metadata for the currently running
execution-plan attempt.

**When to use**

Use to read the active plan step and attempt while code is running under an
execution plan.

**Signature**

```ts
declare const CurrentMetadata: Context.Reference<Metadata>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L411)

Since v4.0.0