# formatIso

Formats a Duration into an ISO8601 duration string.

Months are assumed to be 30 days and years are assumed to be 365 days.

Returns `Option.none()` if the duration is infinite.

To import and use `formatIso` from the "Duration" module:

```ts
import * as Duration from "effect/Duration"
// Can be accessed like this
Duration.formatIso
```

**Example**

```ts
import { Duration, Option } from "effect"

Duration.formatIso(Duration.days(1)) // => Option.some("P1D")
Duration.formatIso(Duration.minutes(90)) // => Option.some("PT1H30M")
Duration.formatIso(Duration.millis(1500)) // => Option.some("PT1.5S")
Duration.formatIso(Duration.infinity) // => Option.none()
```

**Signature**

```ts
export declare const formatIso: (self: DurationInput) => Option.Option<string>
```
