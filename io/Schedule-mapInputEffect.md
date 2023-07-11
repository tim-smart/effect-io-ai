# mapInputEffect

Returns a new schedule that deals with a narrower class of inputs than this
schedule.

To import and use `mapInputEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.mapInputEffect
```

**Signature**

```ts
export declare const mapInputEffect: {
  <In, Env2, In2>(f: (in2: In2) => Effect.Effect<Env2, never, In>): <Env, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In2, Out>
  <Env, In, Out, Env2, In2>(self: Schedule<Env, In, Out>, f: (in2: In2) => Effect.Effect<Env2, never, In>): Schedule<
    Env | Env2,
    In2,
    Out
  >
}
```
