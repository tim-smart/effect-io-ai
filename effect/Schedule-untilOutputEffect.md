# untilOutputEffect

Returns a new schedule that continues until the specified effectful
predicate on the output evaluates to true.

To import and use `untilOutputEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilOutputEffect
undefined

**Signature**

```ts
export declare const untilOutputEffect: {
  <Out, R2>(
    f: (out: Out) => Effect.Effect<boolean, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<boolean, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
