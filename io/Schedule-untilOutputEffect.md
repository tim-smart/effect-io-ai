# untilOutputEffect

Returns a new schedule that continues until the specified effectful
predicate on the output evaluates to true.

To import and use `untilOutputEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.untilOutputEffect
```

**Signature**

```ts
export declare const untilOutputEffect: {
  <Out, Env2>(f: (out: Out) => Effect.Effect<Env2, never, boolean>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(self: Schedule<Env, In, Out>, f: (out: Out) => Effect.Effect<Env2, never, boolean>): Schedule<
    Env | Env2,
    In,
    Out
  >
}
```
