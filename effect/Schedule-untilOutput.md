# untilOutput

Returns a new schedule that stops execution when the given predicate on the
output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
executing while the given predicate returns false for its output values. Once
the predicate evaluates to `true`, execution stops.

The output of the resulting schedule remains the same, but its duration is
now constrained by a stopping condition based on its own output.

To import and use `untilOutput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilOutput
```

**Signature**

```ts
export declare const untilOutput: {
  <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>
}
```
