Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime

A `DateTime` represents a point in time. It can optionally have a time zone
associated with it.

**Example**

```ts
import { DateTime } from "effect"

// Create a UTC DateTime
const utc: DateTime.DateTime = DateTime.nowUnsafe()

// Create a zoned DateTime
const zoned: DateTime.DateTime = DateTime.makeZonedUnsafe(new Date(), {
  timeZone: "Europe/London"
})
```

**Signature**

```ts
type DateTime = Utc | Zoned
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L40)

Since v3.6.0