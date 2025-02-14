# resetWhen

Resets the schedule when the specified predicate on the schedule output
evaluates to `true`.

**Details**

This function modifies a schedule so that it resets to its initial state
whenever the provided predicate `f` returns `true` for an output value.

To import and use `resetWhen` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.resetWhen
```

**Signature**

```ts
export declare const resetWhen: {
  <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>
}
```
