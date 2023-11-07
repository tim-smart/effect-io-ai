# ensuring

Returns a new schedule that will run the specified finalizer as soon as the
schedule is complete. Note that unlike `Effect.ensuring`, this method does not
guarantee the finalizer will be run. The `Schedule` may not initialize or
the driver of the schedule may not run to completion. However, if the
`Schedule` ever decides not to continue, then the finalizer will be run.

To import and use `ensuring` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <X>(finalizer: Effect.Effect<never, never, X>): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out, X>(self: Schedule<Env, In, Out>, finalizer: Effect.Effect<never, never, X>): Schedule<Env, In, Out>
}
```
