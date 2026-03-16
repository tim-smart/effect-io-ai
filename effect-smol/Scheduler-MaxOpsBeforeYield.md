Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MaxOpsBeforeYield

A service reference that controls the maximum number of operations a fiber
can perform before yielding control back to the scheduler. This helps
prevent long-running fibers from monopolizing the execution thread.

The default value is 2048 operations, which provides a good balance between
performance and fairness in concurrent execution.

**Signature**

```ts
declare const MaxOpsBeforeYield: ServiceMap.Reference<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L191)

Since v4.0.0