# upTo

A schedule that recurs during the given duration.

To import and use `upTo` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.upTo
undefined

**Signature**

```ts
export declare const upTo: {
  (duration: Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, duration: Duration.DurationInput): Schedule<Out, In, R>
}
```
