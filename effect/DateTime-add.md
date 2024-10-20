# add

Add the given `amount` of `unit`'s to a `DateTime`.

The time zone is taken into account when adding days, weeks, months, and
years.

To import and use `add` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.add
```

**Example**

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.unsafeMake(0).pipe(DateTime.add({ minutes: 5 }))
```

**Signature**

```ts
export declare const add: {
  (parts: Partial<DateTime.PartsForMath>): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, parts: Partial<DateTime.PartsForMath>): DateTime.PreserveZone<A>
}
```
