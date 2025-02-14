# upTo

Returns a new schedule that limits execution to a fixed duration.

**Details**

This function modifies an existing schedule to stop execution after a
specified duration has passed. The schedule continues as normal until the
duration is reached, at which point it stops automatically.

To import and use `upTo` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.upTo
```

**Signature**

```ts
export declare const upTo: {
  (duration: Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, duration: Duration.DurationInput): Schedule<Out, In, R>
}
```
