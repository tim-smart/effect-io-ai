# schedule

Repeats an effect based on a specified schedule.

**Details**

This function allows you to execute an effect repeatedly according to a given
schedule. The schedule determines the timing and number of repetitions. Each
repetition can also depend on the decision of the schedule, providing
flexibility for complex workflows. This function does not modify the effect's
success or failure; it only controls its repetition.

For example, you can use a schedule that recurs a specific number of times,
adds delays between repetitions, or customizes repetition behavior based on
external inputs. The effect runs initially and is repeated according to the
schedule.

To import and use `schedule` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.schedule
```

**Signature**

```ts
export declare const schedule: {
  <A, R2, Out>(
    schedule: Schedule.Schedule<Out, NoInfer<A> | undefined, R2>
  ): <E, R>(self: Effect<A, E, R>) => Effect<Out, E, R2 | R>
  <A, E, R, R2, Out>(self: Effect<A, E, R>, schedule: Schedule.Schedule<Out, A | undefined, R2>): Effect<Out, E, R | R2>
}
```
