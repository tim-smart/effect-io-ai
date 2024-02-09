# mapEffect

Returns a new schedule that maps the output of this schedule through the
specified effectful function.

To import and use `mapEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <Out, Env2, Out2>(
    f: (out: Out) => Effect.Effect<Out2, never, Env2>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In, Out2>
  <Env, In, Out, Env2, Out2>(
    self: Schedule<Env, In, Out>,
    f: (out: Out) => Effect.Effect<Out2, never, Env2>
  ): Schedule<Env | Env2, In, Out2>
}
```
