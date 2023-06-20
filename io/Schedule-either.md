# either

Returns a new schedule that performs a geometric union on the intervals
defined by both schedules.

To import and use `either` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.either
```

**Signature**

```ts
export declare const either: {
  <Env2, In2, Out2>(that: Schedule<Env2, In2, Out2>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In & In2, readonly [Out, Out2]>
  <Env, In, Out, Env2, In2, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env2, In2, Out2>): Schedule<
    Env | Env2,
    In & In2,
    readonly [Out, Out2]
  >
}
```
