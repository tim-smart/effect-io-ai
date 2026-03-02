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

**Example**

```ts
import { MixedScheduler } from "effect/Scheduler"

// Create a mixed scheduler with async execution (default)
const asyncScheduler = new MixedScheduler("async")

// Create a mixed scheduler with sync execution
const syncScheduler = new MixedScheduler("sync")

// Schedule tasks with different priorities
asyncScheduler.scheduleTask(() => console.log("High priority task"), 10)
asyncScheduler.scheduleTask(() => console.log("Normal priority task"), 0)
asyncScheduler.scheduleTask(() => console.log("Low priority task"), -1)

// For sync scheduler, you can flush tasks immediately
syncScheduler.scheduleTask(() => console.log("Task 1"), 0)
syncScheduler.scheduleTask(() => console.log("Task 2"), 0)

// Force flush all pending tasks in sync mode
syncScheduler.flush()
// Output: "Task 1", "Task 2"

// Check execution mode
console.log(asyncScheduler.executionMode) // "async"
console.log(syncScheduler.executionMode) // "sync"
```

**Signature**

```ts
declare class MixedScheduler { constructor(
    executionMode: "sync" | "async" = "async",
    setImmediateFn: (f: () => void) => () => void = setImmediate
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L116)

Since v2.0.0