# checkEffect

Returns a new schedule that passes each input and output of this schedule
to the specified function, and then determines whether or not to continue
based on the return value of the function.

To import and use `checkEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.checkEffect
undefined

**Signature**

```ts
export declare const checkEffect: {
  <In, Out, R2>(
    test: (input: In, output: Out) => Effect.Effect<boolean, never, R2>
  ): <R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    test: (input: In, output: Out) => Effect.Effect<boolean, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
