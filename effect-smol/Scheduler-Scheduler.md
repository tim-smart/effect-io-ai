Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.Scheduler

A scheduler manages the execution of Effects by controlling when and how tasks
are scheduled and executed. It determines the execution mode (synchronous or
asynchronous) and handles task prioritization and yielding behavior.

The scheduler is responsible for:
- Scheduling tasks with different priorities
- Determining when fibers should yield control
- Managing the execution flow of Effects

**Signature**

```ts
export interface Scheduler {
  readonly executionMode: "sync" | "async"
  shouldYield(fiber: Fiber.Fiber<unknown, unknown>): boolean
  makeDispatcher(): SchedulerDispatcher
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L20)

Since v2.0.0