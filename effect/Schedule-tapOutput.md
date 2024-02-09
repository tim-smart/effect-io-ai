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
  <Out, XO extends Out, Env2, X>(
    f: (out: XO) => Effect.Effect<X, never, Env2>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, XO extends Out, Env2, X>(
    self: Schedule<Env, In, Out>,
    f: (out: XO) => Effect.Effect<X, never, Env2>
  ): Schedule<Env | Env2, In, Out>
}
```
