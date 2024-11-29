# layerCurrentZoneLocal

Create a Layer from the systems local time zone.

To import and use `layerCurrentZoneLocal` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.layerCurrentZoneLocal
undefined

**Signature**

```ts
export declare const layerCurrentZoneLocal: Layer.Layer<CurrentTimeZone, never, never>
```
