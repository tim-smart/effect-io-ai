Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.Scheduler

A scheduler manages the execution of Effect fibers by controlling when queued
tasks run.

**When to use**

Use to define or provide custom runtime scheduling behavior for Effect fibers.

**Details**

A scheduler determines the execution mode, schedules tasks with different
priorities, and decides when fibers should yield control after consuming
their operation budget.

**Signature**

```ts
export interface Scheduler {
  readonly executionMode: "sync" | "async"
  shouldYield(fiber: Fiber.Fiber<unknown, unknown>): boolean
  makeDispatcher(): SchedulerDispatcher
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L43)

Since v2.0.0