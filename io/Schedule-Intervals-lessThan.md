# lessThan

Returns `true` if the start of this `Intervals` is before the start of that
`Intervals`, `false` otherwise.

To import and use `lessThan` from the "Intervals" module:

```ts
import * as Intervals from '@effect/io/Schedule/Intervals'

// Can be accessed like this
Intervals.lessThan
```

**Signature**

```ts
export declare const lessThan: {
  (that: Intervals): (self: Intervals) => boolean
  (self: Intervals, that: Intervals): boolean
}
```
