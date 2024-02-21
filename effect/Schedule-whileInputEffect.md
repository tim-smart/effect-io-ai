# whileInputEffect

Returns a new schedule that continues for as long the specified effectful
predicate on the input evaluates to true.

To import and use `whileInputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.whileInputEffect
```

**Signature**

```ts
export declare const whileInputEffect: {
  <In, R2>(
    f: (input: In) => Effect.Effect<boolean, never, R2>
  ): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (input: In) => Effect.Effect<boolean, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
