Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mutateUtc

Modifies a `DateTime` with a mutable UTC `Date` copy.

**When to use**

Use to adjust the instant with an existing `Date` mutation API that works on
UTC calendar fields.

**Example** (Mutating DateTime values with UTC Dates)

```ts
import { DateTime } from "effect"

const dt = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: "Europe/London"
})

const modified = DateTime.mutateUtc(dt, (date) => {
  date.setUTCHours(18) // Set UTC time to 6 PM
})

console.log(DateTime.formatIso(modified)) // "2024-01-01T18:00:00.000Z"
```

**Signature**

```ts
declare const mutateUtc: { (f: (date: Date) => void): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (date: Date) => void): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L2128)

Since v3.6.0