Package: `effect`<br />
Module: `Duration`<br />

## Duration.unsafeFormatIso

Formats a Duration into an ISO8601 duration string.

Months are assumed to be 30 days and years are assumed to be 365 days.

Milliseconds and nanoseconds are expressed as fractional seconds.

**Throws**

`RangeError` If the duration is not finite.

**Example**

```ts
import { Duration } from "effect"

Duration.unsafeFormatIso(Duration.days(1)) // => "P1D"
Duration.unsafeFormatIso(Duration.minutes(90)) // => "PT1H30M"
Duration.unsafeFormatIso(Duration.millis(1500)) // => "PT1.5S"
```

**Signature**

```ts
declare const unsafeFormatIso: (self: DurationInput) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L878)

Since v3.13.0