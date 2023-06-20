# reconsider

Returns a new schedule that reconsiders every decision made by this
schedule, possibly modifying the next interval and the output type in the
process.

To import and use `reconsider` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.reconsider
```

**Signature**

```ts
export declare const reconsider: {
  <Out, Out2>(
    f: (
      out: Out,
      decision: ScheduleDecision.ScheduleDecision
    ) => Either.Either<Out2, readonly [Out2, Interval.Interval]>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out2>
  <Env, In, Out, Out2>(
    self: Schedule<Env, In, Out>,
    f: (
      out: Out,
      decision: ScheduleDecision.ScheduleDecision
    ) => Either.Either<Out2, readonly [Out2, Interval.Interval]>
  ): Schedule<Env, In, Out2>
}
```
