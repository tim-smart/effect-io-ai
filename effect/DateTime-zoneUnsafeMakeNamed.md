# zoneUnsafeMakeNamed

Attempt to create a named time zone from a IANA time zone identifier.

If the time zone is invalid, an `IllegalArgumentException` will be thrown.

To import and use `zoneUnsafeMakeNamed` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zoneUnsafeMakeNamed
```

**Signature**

```ts
export declare const zoneUnsafeMakeNamed: (zoneId: string) => TimeZone.Named
```
