Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MaxOpsBeforeYield

A service reference that controls the maximum number of operations a fiber
can perform before yielding control back to the scheduler.

**Details**

The default value is `2048` operations, which balances performance and
fairness by helping prevent long-running fibers from monopolizing the
execution thread.

**Signature**

```ts
declare const MaxOpsBeforeYield: Context.Reference<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L231)

Since v4.0.0