# eitherWith

The same as `either` followed by `map`.

To import and use `eitherWith` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.eitherWith
```

**Signature**

```ts
export declare const eitherWith: {
  <Env2, In2, Out2>(
    that: Schedule<Env2, In2, Out2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In & In2, readonly [Out, Out2]>
  <Env, In, Out, Env2, In2, Out2>(
    self: Schedule<Env, In, Out>,
    that: Schedule<Env2, In2, Out2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): Schedule<Env | Env2, In & In2, readonly [Out, Out2]>
}
```
