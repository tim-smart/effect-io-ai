# union

Computes the union of this `Intervals` and that `Intervals`

To import and use `union` from the "Intervals" module:

```ts
import * as Intervals from '@effect/io/Schedule/Intervals'

// Can be accessed like this
Intervals.union
```

**Signature**

```ts
export declare const union: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
