# lessThan

Returns `true` if this `Interval` is less than `that` interval, `false`
otherwise.

To import and use `lessThan` from the "Interval" module:

```ts
import * as Interval from '@effect/io/Schedule/Interval'

// Can be accessed like this
Interval.lessThan
```

**Signature**

```ts
export declare const lessThan: {
  (that: Interval): (self: Interval) => boolean
  (self: Interval, that: Interval): boolean
}
```
