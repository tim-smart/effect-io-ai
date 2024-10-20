# zoneToString

Format a `TimeZone` as a string.

To import and use `zoneToString` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zoneToString
```

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
export declare const zoneToString: (self: TimeZone) => string
```
