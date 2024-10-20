# distance

Calulate the difference between two `DateTime` values, returning the number
of milliseconds the `other` DateTime is from `self`.

If `other` is _after_ `self`, the result will be a positive number.

To import and use `distance` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.distance
```

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  const other = DateTime.add(now, { minutes: 1 })

  // returns 60000
  DateTime.distance(now, other)
})
```

**Signature**

```ts
export declare const distance: {
  (other: DateTime): (self: DateTime) => number
  (self: DateTime, other: DateTime): number
}
```
