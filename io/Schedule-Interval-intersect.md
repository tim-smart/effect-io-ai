# intersect

Computes a new `Interval` which is the intersection of this `Interval` and
that `Interval`.

To import and use `intersect` from the "Interval" module:

```ts
import * as Interval from '@effect/io/Schedule/Interval'

// Can be accessed like this
Interval.intersect
```

**Signature**

```ts
export declare const intersect: {
  (that: Interval): (self: Interval) => Interval
  (self: Interval, that: Interval): Interval
}
```
