Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toDateUtc

Get the UTC `Date` of a `DateTime`.

This always returns the UTC representation, ignoring any time zone information.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: "Europe/London"
})

const utcDate = DateTime.toDateUtc(dt)
console.log(utcDate.toISOString()) // "2024-01-01T12:00:00.000Z"
```

**Signature**

```ts
declare const toDateUtc: (self: DateTime) => Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1260)

Since v3.6.0