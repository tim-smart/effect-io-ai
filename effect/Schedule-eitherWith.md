# eitherWith

The same as `either` followed by `map`.

To import and use `eitherWith` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.eitherWith
undefined

**Signature**

```ts
export declare const eitherWith: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): Schedule<[Out, Out2], In & In2, R | R2>
}
```
