# zoneMakeLocal

Create a named time zone from the system's local time zone.

To import and use `zoneMakeLocal` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zoneMakeLocal
undefined

**Signature**

```ts
export declare const zoneMakeLocal: () => TimeZone.Named
```
