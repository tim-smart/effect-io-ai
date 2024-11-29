# zoneMakeNamed

Create a named time zone from a IANA time zone identifier. If the time zone
is invalid, `None` will be returned.

To import and use `zoneMakeNamed` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zoneMakeNamed
undefined

**Signature**

```ts
export declare const zoneMakeNamed: (zoneId: string) => Option.Option<TimeZone.Named>
```
