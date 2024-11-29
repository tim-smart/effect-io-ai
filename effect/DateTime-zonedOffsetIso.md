# zonedOffsetIso

Calculate the time zone offset of a `DateTime` in milliseconds.

The offset is formatted as "±HH:MM".

To import and use `zonedOffsetIso` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.zonedOffsetIso
undefined

**Signature**

```ts
export declare const zonedOffsetIso: (self: Zoned) => string
```
