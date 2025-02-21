# onDecision

Returns a new schedule that executes an effect every time the schedule makes
a decision.

**Details**

This function enhances an existing schedule by running an effectful function
`f` whenever a scheduling decision is made. The function receives the current
schedule output (`out`) and the decision (`ScheduleDecision`), allowing
additional logic to be executed, such as logging, monitoring, or side
effects.

To import and use `onDecision` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.onDecision
```

**Signature**

```ts
export declare const onDecision: {
  <Out, X, R2>(
    f: (out: Out, decision: ScheduleDecision.ScheduleDecision) => Effect.Effect<X, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, X, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out, decision: ScheduleDecision.ScheduleDecision) => Effect.Effect<X, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
