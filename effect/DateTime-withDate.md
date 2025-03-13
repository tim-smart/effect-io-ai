Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withDate

Using the time zone adjusted `Date`, apply a function to the `Date` and
return the result.

**Example**

```ts
import { DateTime } from "effect"

// get the time zone adjusted date in milliseconds
DateTime.unsafeMakeZoned(0, { timeZone: "Europe/London" }).pipe(
  DateTime.withDate((date) => date.getTime())
)
```

**Signature**

```ts
declare const withDate: { <A>(f: (date: Date) => A): (self: DateTime) => A; <A>(self: DateTime, f: (date: Date) => A): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1192)

Since v3.6.0