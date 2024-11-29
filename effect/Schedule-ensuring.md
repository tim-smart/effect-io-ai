# ensuring

Returns a new schedule that will run the specified finalizer as soon as the
schedule is complete. Note that unlike `Effect.ensuring`, this method does not
guarantee the finalizer will be run. The `Schedule` may not initialize or
the driver of the schedule may not run to completion. However, if the
`Schedule` ever decides not to continue, then the finalizer will be run.

To import and use `ensuring` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.ensuring
undefined

**Signature**

```ts
export declare const ensuring: {
  <X>(finalizer: Effect.Effect<X, never, never>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R, X>(self: Schedule<Out, In, R>, finalizer: Effect.Effect<X, never, never>): Schedule<Out, In, R>
}
```
