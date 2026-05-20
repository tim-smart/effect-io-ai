Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withDateUtc

Applies a function to a JavaScript `Date` representing the `DateTime`'s UTC
instant and returns the function's result.

**Details**

This ignores any associated time zone. Use `DateTime.withDate` when the
callback should receive the time-zone-adjusted wall-clock date.

**Example** (Using UTC Dates)

```ts
import { DateTime } from "effect"

// get the date in milliseconds
DateTime.makeUnsafe(0).pipe(
  DateTime.withDateUtc((date) => date.getTime())
)
```

**Signature**

```ts
declare const withDateUtc: { <A>(f: (date: Date) => A): (self: DateTime) => A; <A>(self: DateTime, f: (date: Date) => A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2151)

Since v3.6.0