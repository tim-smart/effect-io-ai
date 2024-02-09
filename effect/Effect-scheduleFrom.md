# scheduleFrom

Runs this effect according to the specified schedule starting from the
specified input value.

To import and use `scheduleFrom` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scheduleFrom
```

**Signature**

```ts
export declare const scheduleFrom: {
  <R2, In, Out>(
    initial: In,
    schedule: Schedule.Schedule<R2, In, Out>
  ): <E, R>(self: Effect<In, E, R>) => Effect<Out, E, R2 | R>
  <In, E, R, R2, Out>(
    self: Effect<In, E, R>,
    initial: In,
    schedule: Schedule.Schedule<R2, In, Out>
  ): Effect<Out, E, R | R2>
}
```
