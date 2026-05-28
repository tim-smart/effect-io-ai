Package: `effect`<br />
Module: `References`<br />

## References.MaxOpsBeforeYield

Context reference for the maximum operation budget before a fiber yields to the scheduler.

**When to use**

Use to tune scheduler fairness for CPU-bound fibers by changing the
operation budget that triggers a scheduler yield.

**Details**

The default value is `2048` operations.

**See**

- `PreventSchedulerYield` for bypassing scheduler yield checks instead of changing the operation budget

**Signature**

```ts
declare const MaxOpsBeforeYield: Context.Reference<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L123)

Since v4.0.0