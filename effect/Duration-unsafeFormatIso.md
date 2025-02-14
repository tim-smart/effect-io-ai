# unsafeFormatIso

Formats a Duration into an ISO8601 duration string.

The ISO8601 duration format is generally specified as P[n]Y[n]M[n]DT[n]H[n]M[n]S. However, since
the `Duration` type does not support years or months, this function will only output the days, hours,
minutes and seconds. Thus, the effective format is P[n]DT[n]H[n]M[n]S.

Milliseconds and nanoseconds are expressed as fractional seconds.

To import and use `unsafeFormatIso` from the "Duration" module:

```ts
import * as Duration from "effect/Duration"
// Can be accessed like this
Duration.unsafeFormatIso
```

**Example**

```ts
import { Duration } from "effect"

Duration.unsafeFormatIso(Duration.days(1)) // => "P1D"
Duration.unsafeFormatIso(Duration.minutes(90)) // => "PT1H30M"
Duration.unsafeFormatIso(Duration.millis(1500)) // => "PT1.5S"
```

**Signature**

```ts
export declare const unsafeFormatIso: (self: DurationInput) => string
```
