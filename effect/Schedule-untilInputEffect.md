# untilInputEffect

Returns a new schedule that stops execution when the given effectful
predicate on the input evaluates to `true`.

**Details**

This function modifies an existing schedule so that it continues executing
only while the provided effectful predicate returns `false` for incoming
inputs. The predicate is an `Effect`, meaning it can involve asynchronous
computations or dependency-based logic.

To import and use `untilInputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilInputEffect
```

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
