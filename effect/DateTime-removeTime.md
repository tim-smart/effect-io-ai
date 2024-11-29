# removeTime

Remove the time aspect of a `DateTime`, first adjusting for the time
zone. It will return a `DateTime.Utc` only containing the date.

To import and use `removeTime` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.removeTime
undefined

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-01T00:00:00Z"
DateTime.unsafeMakeZoned("2024-01-01T05:00:00Z", {
  timeZone: "Pacific/Auckland",
  adjustForTimeZone: true
}).pipe(DateTime.removeTime, DateTime.formatIso)
```

**Signature**

```ts
export declare const removeTime: (self: DateTime) => Utc
```
