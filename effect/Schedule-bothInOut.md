# bothInOut

Returns a new schedule that has both the inputs and outputs of this and the
specified schedule.

To import and use `bothInOut` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.bothInOut
undefined

**Signature**

```ts
export declare const bothInOut: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], readonly [In, In2], R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<[Out, Out2], readonly [In, In2], R | R2>
}
```
