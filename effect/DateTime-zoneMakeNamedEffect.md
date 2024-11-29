# zoneMakeNamedEffect

Create a named time zone from a IANA time zone identifier. If the time zone
is invalid, it will fail with an `IllegalArgumentException`.

To import and use `zoneMakeNamedEffect` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zoneMakeNamedEffect
undefined

**Signature**

```ts
export declare const zoneMakeNamedEffect: (zoneId: string) => Effect.Effect<TimeZone.Named, IllegalArgumentException>
```
