Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withDateUtc

Using the time zone adjusted `Date`, apply a function to the `Date` and
return the result.

**Example**

```ts
import { DateTime } from "effect"

// get the date in milliseconds
DateTime.unsafeMake(0).pipe(
  DateTime.withDateUtc((date) => date.getTime())
)
```

**Signature**

```ts
declare const withDateUtc: { <A>(f: (date: Date) => A): (self: DateTime) => A; <A>(self: DateTime, f: (date: Date) => A): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1229)

Since v3.6.0