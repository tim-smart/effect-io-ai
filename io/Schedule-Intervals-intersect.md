# intersect

Produces the intersection of this `Intervals` and that `Intervals`.

To import and use `intersect` from the "Intervals" module:

```ts
import * as Intervals from '@effect/io/Schedule/Intervals'

// Can be accessed like this
Intervals.intersect
```

**Signature**

```ts
export declare const intersect: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
