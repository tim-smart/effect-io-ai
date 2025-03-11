## removeTime

Remove the time aspect of a `DateTime`, first adjusting for the time
zone. It will return a `DateTime.Utc` only containing the date.

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-01T00:00:00Z"
DateTime.unsafeMakeZoned("2024-01-01T05:00:00Z", {
  timeZone: "Pacific/Auckland",
  adjustForTimeZone: true
}).pipe(
  DateTime.removeTime,
  DateTime.formatIso
)
```

**Signature**

```ts
declare const removeTime: (self: DateTime) => Utc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L873)

Since v3.6.0