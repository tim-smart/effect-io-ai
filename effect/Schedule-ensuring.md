Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.ensuring

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

**Signature**

```ts
declare const ensuring: { <X>(finalizer: Effect.Effect<X, never, never>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R, X>(self: Schedule<Out, In, R>, finalizer: Effect.Effect<X, never, never>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L981)

Since v2.0.0