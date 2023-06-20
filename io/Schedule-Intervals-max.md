# max

Returns the maximum of the two `Intervals` (i.e. which has the latest start).

To import and use `max` from the "Intervals" module:

```ts
import * as Intervals from '@effect/io/Schedule/Intervals'

// Can be accessed like this
Intervals.max
```

**Signature**

```ts
export declare const max: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
