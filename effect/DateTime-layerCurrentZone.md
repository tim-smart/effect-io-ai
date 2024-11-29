# layerCurrentZone

Create a Layer from the given time zone.

To import and use `layerCurrentZone` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.layerCurrentZone
undefined

**Signature**

```ts
export declare const layerCurrentZone: (zone: TimeZone) => Layer.Layer<CurrentTimeZone>
```
