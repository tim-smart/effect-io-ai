Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MixedScheduler

Provides a scheduler implementation that batches queued tasks and dispatches them by
priority.

**When to use**

Use when you need the default runtime scheduler directly, including a
scheduler that batches queued work by priority and preserves FIFO order within
each priority.

**Details**

`MixedScheduler` supports synchronous and asynchronous execution modes, uses
operation counts to decide when fibers should yield, and is the default
scheduler implementation.

**Signature**

```ts
declare class MixedScheduler { constructor(
    executionMode: "sync" | "async" = "async",
    setImmediateFn: (f: () => void) => () => void = setImmediate
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L151)

Since v2.0.0