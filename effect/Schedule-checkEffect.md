# checkEffect

Conditionally filters schedule executions using an effectful function.

**Details**

This function modifies a schedule by applying a custom effectful test
function to each input-output pair. The test function determines whether the
schedule should continue (`true`) or stop (`false`).

This is useful when the decision to continue depends on external factors such
as database lookups, API calls, or other asynchronous computations.

To import and use `checkEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.checkEffect
```

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
