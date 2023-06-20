# schedule

Runs this effect according to the specified schedule.

See `scheduleFrom` for a variant that allows the schedule's decision to
depend on the result of this effect.

To import and use `schedule` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.schedule
```

**Signature**

```ts
export declare const schedule: {
  <R2, Out>(schedule: Schedule.Schedule<R2, unknown, Out>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E, Out>
  <R, E, A, R2, Out>(self: Effect<R, E, A>, schedule: Schedule.Schedule<R2, unknown, Out>): Effect<R | R2, E, Out>
}
```
