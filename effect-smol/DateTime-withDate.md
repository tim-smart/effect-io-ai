Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withDate

Applies a function to a JavaScript `Date` representing the `DateTime` and
returns the function's result.

**Details**

The callback receives the time-zone-adjusted wall-clock date for
`DateTime.Zoned` values. Use `DateTime.withDateUtc` when the callback should
receive the UTC instant.

**Example** (Using time zone adjusted Dates)

```ts
import { DateTime } from "effect"

// get the time zone adjusted date in milliseconds
DateTime.makeZonedUnsafe(0, { timeZone: "Europe/London" }).pipe(
  DateTime.withDate((date) => date.getTime())
)
```

**Signature**

```ts
declare const withDate: { <A>(f: (date: Date) => A): (self: DateTime) => A; <A>(self: DateTime, f: (date: Date) => A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2180)

Since v3.6.0