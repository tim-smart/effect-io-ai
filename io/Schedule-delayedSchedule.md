# delayedSchedule

Takes a schedule that produces a delay, and returns a new schedule that
uses this delay to further delay intervals in the resulting schedule.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const delayedSchedule: <Env, In>(
  schedule: Schedule<Env, In, Duration.Duration>
) => Schedule<Env, In, Duration.Duration>
```
