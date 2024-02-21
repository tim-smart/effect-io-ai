# tapOutput

Returns a new schedule that effectfully processes every output from this
schedule.

To import and use `tapOutput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.tapOutput
```

**Signature**

```ts
export declare const tapOutput: {
  <XO extends Out, X, R2, Out>(
    f: (out: XO) => Effect.Effect<X, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, XO extends Out, X, R2>(
    self: Schedule<Out, In, R>,
    f: (out: XO) => Effect.Effect<X, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
