# untilInputEffect

Returns a new schedule that continues until the specified effectful
predicate on the input evaluates to true.

To import and use `untilInputEffect` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.untilInputEffect
```

**Signature**

```ts
export declare const untilInputEffect: {
  <In, Env2>(f: (input: In) => Effect.Effect<Env2, never, boolean>): <Env, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(self: Schedule<Env, In, Out>, f: (input: In) => Effect.Effect<Env2, never, boolean>): Schedule<
    Env | Env2,
    In,
    Out
  >
}
```
