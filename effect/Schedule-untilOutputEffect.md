# untilOutputEffect

Returns a new schedule that stops execution when the given effectful
predicate on the output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
executing while the provided effectful predicate returns `false` for its
output values. Once the predicate returns `true`, execution stops.

To import and use `untilOutputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilOutputEffect
```

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
