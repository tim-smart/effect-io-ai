# untilInputEffect

Returns a new schedule that continues until the specified effectful
predicate on the input evaluates to true.

To import and use `untilInputEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilInputEffect
undefined

**Signature**

```ts
export declare const untilInputEffect: {
  <In, R2>(
    f: (input: In) => Effect.Effect<boolean, never, R2>
  ): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (input: In) => Effect.Effect<boolean, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
