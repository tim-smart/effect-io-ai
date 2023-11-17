# bothInOut

Returns a new schedule that has both the inputs and outputs of this and the
specified schedule.

To import and use `bothInOut` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.bothInOut
```

**Signature**

```ts
export declare const bothInOut: {
  <Env2, In2, Out2>(
    that: Schedule<Env2, In2, Out2>
  ): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, readonly [In, In2], [Out, Out2]>
  <Env, In, Out, Env2, In2, Out2>(
    self: Schedule<Env, In, Out>,
    that: Schedule<Env2, In2, Out2>
  ): Schedule<Env | Env2, readonly [In, In2], [Out, Out2]>
}
```
