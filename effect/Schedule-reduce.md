# reduce

Returns a new schedule that folds over the outputs of this one.

To import and use `reduce` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Out, Z>(zero: Z, f: (z: Z, out: Out) => Z): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Z>
  <Env, In, Out, Z>(self: Schedule<Env, In, Out>, zero: Z, f: (z: Z, out: Out) => Z): Schedule<Env, In, Z>
}
```
