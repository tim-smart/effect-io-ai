# reduce

Returns a new schedule that folds over the outputs of this one.

To import and use `reduce` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.reduce
undefined

**Signature**

```ts
export declare const reduce: {
  <Out, Z>(zero: Z, f: (z: Z, out: Out) => Z): <In, R>(self: Schedule<Out, In, R>) => Schedule<Z, In, R>
  <Out, In, R, Z>(self: Schedule<Out, In, R>, zero: Z, f: (z: Z, out: Out) => Z): Schedule<Z, In, R>
}
```
