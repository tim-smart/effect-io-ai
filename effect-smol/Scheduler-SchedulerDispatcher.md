Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.SchedulerDispatcher

A dispatcher created by a `Scheduler` for enqueuing tasks and forcing queued
tasks to run.

**When to use**

Use when implementing or testing scheduler-created dispatchers that enqueue
prioritized runtime tasks and flush queued work deterministically.

**Details**

`scheduleTask` queues a task with a priority. `flush` drains pending work
synchronously, which is useful when callers need deterministic completion of
already scheduled tasks. Lower priority numbers run first, and equal
priorities run in FIFO order.

**Signature**

```ts
export interface SchedulerDispatcher {
  scheduleTask(task: () => void, priority: number): void
  flush(): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L57)

Since v4.0.0