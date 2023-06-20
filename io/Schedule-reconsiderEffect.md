# reconsiderEffect

Returns a new schedule that effectfully reconsiders every decision made by
this schedule, possibly modifying the next interval and the output type in
the process.

To import and use `reconsiderEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.reconsiderEffect
```

**Signature**

```ts
export declare const reconsiderEffect: {
  <Out, Env2, Out2>(
    f: (
      out: Out,
      decision: ScheduleDecision.ScheduleDecision
    ) => Effect.Effect<Env2, never, Either.Either<Out2, readonly [Out2, Interval.Interval]>>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In, Out2>
  <Env, In, Out, Env2, Out2>(
    self: Schedule<Env, In, Out>,
    f: (
      out: Out,
      decision: ScheduleDecision.ScheduleDecision
    ) => Effect.Effect<Env2, never, Either.Either<Out2, readonly [Out2, Interval.Interval]>>
  ): Schedule<Env | Env2, In, Out2>
}
```
