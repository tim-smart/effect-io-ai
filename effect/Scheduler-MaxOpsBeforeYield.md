Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MaxOpsBeforeYield

Context reference that controls the maximum number of operations a fiber
can perform before yielding control back to the scheduler.

**When to use**

Use to tune scheduler fairness for CPU-bound fibers by changing the scheduler
operation budget that triggers a yield.

**Details**

The default value is `2048` operations, which balances performance and
fairness by helping prevent long-running fibers from monopolizing the
execution thread.

**See**

- `PreventSchedulerYield` for bypassing scheduler yield checks entirely rather than tuning the operation budget

**Signature**

```ts
declare const MaxOpsBeforeYield: Context.Reference<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scheduler.ts#L258)

Since v4.0.0