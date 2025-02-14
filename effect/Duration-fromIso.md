# fromIso

Parses an ISO8601 duration string into a `Duration`.

Months are assumed to be 30 days and years are assumed to be 365 days.

To import and use `fromIso` from the "Duration" module:

```ts
import * as Duration from "effect/Duration"
// Can be accessed like this
Duration.fromIso
```

**Example**

```ts
import { Duration, Option } from "effect"

Duration.fromIso("P1D") // => Option.some(Duration.days(1))
Duration.fromIso("PT1H") // => Option.some(Duration.hours(1))
Duration.fromIso("PT1M") // => Option.some(Duration.minutes(1))
Duration.fromIso("PT1.5S") // => Option.some(Duration.seconds(1.5))
```

**Signature**

```ts
export declare const fromIso: (iso: string) => Option.Option<Duration>
```
