# ensuring

Attaches a finalizer to a schedule that runs when the schedule completes.

**Details**

This function returns a new schedule that executes a given finalizer when the
schedule reaches completion. Unlike `Effect.ensuring`, this method does not
guarantee the finalizer will run in all cases. If the schedule never
initializes or is not driven to completion, the finalizer may not execute.
However, if the schedule decides not to continue, the finalizer will be
invoked.

This is useful for cleaning up resources, logging, or executing other side
effects when a schedule completes.

To import and use `ensuring` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <X>(finalizer: Effect.Effect<X, never, never>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R, X>(self: Schedule<Out, In, R>, finalizer: Effect.Effect<X, never, never>): Schedule<Out, In, R>
}
```
