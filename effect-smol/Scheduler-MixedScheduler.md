Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MixedScheduler

A scheduler implementation that provides efficient task scheduling
with support for both synchronous and asynchronous execution modes.

Features:
- Batches tasks for efficient execution
- Supports priority-based task scheduling
- Configurable execution mode (sync/async)
- Automatic yielding based on operation count
- Optimized for high-throughput scenarios

**Signature**

```ts
declare class MixedScheduler { constructor(
    executionMode: "sync" | "async" = "async",
    setImmediateFn: (f: () => void) => () => void = setImmediate
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L97)

Since v2.0.0