# layerCurrentZoneOffset

Create a Layer from the given time zone offset.

To import and use `layerCurrentZoneOffset` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.layerCurrentZoneOffset
```

**Signature**

```ts
export declare const layerCurrentZoneOffset: (offset: number) => Layer.Layer<CurrentTimeZone>
```
