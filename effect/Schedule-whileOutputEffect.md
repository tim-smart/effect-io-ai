# whileOutputEffect

Returns a new schedule that continues execution for as long as the given
effectful predicate on the output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
execution while an effectful condition holds true for its output. If the
effectful predicate returns `false`, the schedule stops.

To import and use `whileOutputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.whileOutputEffect
```

**Signature**

```ts
export declare const whileOutputEffect: {
  <Out, R2>(
    f: (out: Out) => Effect.Effect<boolean, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<boolean, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
