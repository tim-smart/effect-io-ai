Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toDate

Convert a `DateTime` to a `Date`, applying the time zone first.

For `DateTime.Zoned`, this adjusts for the time zone before converting.
For `DateTime.Utc`, this is equivalent to `toDateUtc`.

**Example**

```ts
import { DateTime } from "effect"

const utc = DateTime.makeUnsafe("2024-01-01T12:00:00Z")
const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: "Europe/London"
})

console.log(DateTime.toDate(utc).toISOString())
console.log(DateTime.toDate(zoned).toISOString())
```

**Signature**

```ts
declare const toDate: (self: DateTime) => Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1243)

Since v3.6.0