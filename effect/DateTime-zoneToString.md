## zoneToString

Format a `TimeZone` as a string.

**Example**

```ts
import { DateTime, Effect } from "effect"

// Outputs "+03:00"
DateTime.zoneToString(DateTime.zoneMakeOffset(3 * 60 * 60 * 1000))

// Outputs "Europe/London"
DateTime.zoneToString(DateTime.zoneUnsafeMakeNamed("Europe/London"))
```

**Signature**

```ts
declare const zoneToString: (self: TimeZone) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L581)

Since v3.6.0