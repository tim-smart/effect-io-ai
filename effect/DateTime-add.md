## add

Add the given `amount` of `unit`'s to a `DateTime`.

The time zone is taken into account when adding days, weeks, months, and
years.

**Example**

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.unsafeMake(0).pipe(
  DateTime.add({ minutes: 5 })
)
```

**Signature**

```ts
declare const add: { (parts: Partial<DateTime.PartsForMath>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsForMath>): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1295)

Since v3.6.0