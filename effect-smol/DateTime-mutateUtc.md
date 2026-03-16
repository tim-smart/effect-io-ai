Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mutateUtc

Modify a `DateTime` by applying a function to a cloned UTC `Date` instance.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1723)

Since v3.6.0