# reduce

Returns a new schedule that folds over the outputs of this one.

**Details**

This schedule transforms the output by accumulating values over time using a
reducer function `f`. It starts with an initial value `zero` and updates it
each time the schedule produces an output.

This is useful for tracking statistics, aggregating results, or summarizing
data across multiple executions.

To import and use `reduce` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Out, Z>(zero: Z, f: (z: Z, out: Out) => Z): <In, R>(self: Schedule<Out, In, R>) => Schedule<Z, In, R>
  <Out, In, R, Z>(self: Schedule<Out, In, R>, zero: Z, f: (z: Z, out: Out) => Z): Schedule<Z, In, R>
}
```
