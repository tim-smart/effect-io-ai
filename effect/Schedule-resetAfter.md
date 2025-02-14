# resetAfter

Returns a new schedule that automatically resets to its initial state after a
period of inactivity defined by `duration`.

**Details**

This function modifies a schedule so that if no inputs are received for the
specified `duration`, the schedule resets as if it were new.

To import and use `resetAfter` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.resetAfter
```

**Signature**

```ts
export declare const resetAfter: {
  (duration: Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, duration: Duration.DurationInput): Schedule<Out, In, R>
}
```
