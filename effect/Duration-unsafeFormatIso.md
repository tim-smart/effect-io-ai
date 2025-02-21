# unsafeFormatIso

Formats a Duration into an ISO8601 duration string.

Months are assumed to be 30 days and years are assumed to be 365 days.

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
