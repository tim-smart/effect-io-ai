Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.SchedulerDispatcher

A dispatcher created by a `Scheduler` for enqueuing tasks and forcing queued
tasks to run.

**Details**

`scheduleTask` queues a task with a priority. `flush` drains pending work
synchronously, which is useful when callers need deterministic completion of
already scheduled tasks.

**Signature**

```ts
export interface SchedulerDispatcher {
  scheduleTask(task: () => void, priority: number): void
  flush(): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L58)

Since v4.0.0