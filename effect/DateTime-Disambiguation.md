Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.Disambiguation

A `Disambiguation` is used to resolve ambiguities when a `DateTime` is
ambiguous, such as during a daylight saving time transition.

For more information, see the [Temporal documentation](https://tc39.es/proposal-temporal/docs/timezone.html#ambiguity-due-to-dst-or-other-time-zone-offset-changes)

- `"compatible"`: (default) Behavior matching Temporal API and legacy JavaScript Date and moment.js.
  For repeated times, chooses the earlier occurrence. For gap times, chooses the later interpretation.

- `"earlier"`: For repeated times, always choose the earlier occurrence.
  For gap times, choose the time before the gap.

- `"later"`: For repeated times, always choose the later occurrence.
  For gap times, choose the time after the gap.

- `"reject"`: Throw an `RangeError` when encountering ambiguous or non-existent times.

**Example**

```ts
import { DateTime } from "effect"

// Fall-back example: 01:30 on Nov 2, 2025 in New York happens twice
const ambiguousTime = { year: 2025, month: 11, day: 2, hours: 1, minutes: 30 }
const timeZone = DateTime.zoneUnsafeMakeNamed("America/New_York")

DateTime.makeZoned(ambiguousTime, { timeZone, adjustForTimeZone: true, disambiguation: "earlier" })
// Earlier occurrence (DST time): 2025-11-02T05:30:00.000Z

DateTime.makeZoned(ambiguousTime, { timeZone, adjustForTimeZone: true, disambiguation: "later" })
// Later occurrence (standard time): 2025-11-02T06:30:00.000Z

// Gap example: 02:30 on Mar 9, 2025 in New York doesn't exist
const gapTime = { year: 2025, month: 3, day: 9, hours: 2, minutes: 30 }

DateTime.makeZoned(gapTime, { timeZone, adjustForTimeZone: true, disambiguation: "earlier" })
// Time before gap: 2025-03-09T06:30:00.000Z (01:30 EST)

DateTime.makeZoned(gapTime, { timeZone, adjustForTimeZone: true, disambiguation: "later" })
// Time after gap: 2025-03-09T07:30:00.000Z (03:30 EDT)
```

**Signature**

```ts
type Disambiguation = "compatible" | "earlier" | "later" | "reject"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L262)

Since v3.18.0