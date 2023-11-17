# whileOutputEffect

Returns a new schedule that continues for as long the specified effectful
predicate on the output evaluates to true.

To import and use `whileOutputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.whileOutputEffect
```

**Signature**

```ts
export declare const whileOutputEffect: {
  <Out, Env1>(
    f: (out: Out) => Effect.Effect<Env1, never, boolean>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env1 | Env, In, Out>
  <Env, In, Out, Env1>(
    self: Schedule<Env, In, Out>,
    f: (out: Out) => Effect.Effect<Env1, never, boolean>
  ): Schedule<Env | Env1, In, Out>
}
```
