# delayed

Returns a new schedule with the specified effectfully computed delay added
before the start of each interval produced by this schedule.

To import and use `delayed` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delayed
undefined

**Signature**

```ts
export declare const delayed: {
  (
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(
    self: Schedule<Out, In, R>,
    f: (duration: Duration.Duration) => Duration.DurationInput
  ): Schedule<Out, In, R>
}
```
