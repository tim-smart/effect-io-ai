# subtract

Subtract the given `amount` of `unit`'s from a `DateTime`.

To import and use `subtract` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.subtract
```

**Example**

```ts
import { DateTime } from "effect"

// subtract 5 minutes
DateTime.unsafeMake(0).pipe(DateTime.subtract({ minutes: 5 }))
```

**Signature**

```ts
export declare const subtract: {
  (parts: Partial<DateTime.PartsForMath>): <A extends DateTime>(self: A) => A
  <A extends DateTime>(self: A, parts: Partial<DateTime.PartsForMath>): A
}
```
