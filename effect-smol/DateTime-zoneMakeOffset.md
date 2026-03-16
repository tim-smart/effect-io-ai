Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeOffset

Create a fixed offset time zone.

The offset is specified in milliseconds from UTC. Positive values are
ahead of UTC, negative values are behind UTC.

**Example**

```ts
import { DateTime } from "effect"

// Create a time zone with +3 hours offset
const zone = DateTime.zoneMakeOffset(3 * 60 * 60 * 1000)

const dt = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: zone
})
```

**Signature**

```ts
declare const zoneMakeOffset: (offset: number) => TimeZone.Offset
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L757)

Since v3.6.0