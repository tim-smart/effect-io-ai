Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toUtc

Converts a `DateTime` to a UTC `DateTime`.

**When to use**

Use to represent the same instant in UTC instead of its current time zone.

**Details**

The returned value keeps the same epoch milliseconds and changes only the
`DateTime` representation to UTC.

**Example** (Converting DateTime values to UTC)

```ts
import { DateTime } from "effect"

const now = DateTime.makeZonedUnsafe({ year: 2024 }, {
  timeZone: "Europe/London"
})

// set as UTC
const utc: DateTime.Utc = DateTime.toUtc(now)
```

**Signature**

```ts
declare const toUtc: (self: DateTime) => Utc
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L943)

Since v3.13.0