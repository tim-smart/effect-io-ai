# layerCurrentZoneNamed

Create a Layer from the given IANA time zone identifier.

To import and use `layerCurrentZoneNamed` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.layerCurrentZoneNamed
```

**Signature**

```ts
export declare const layerCurrentZoneNamed: (zoneId: string) => Layer.Layer<CurrentTimeZone, IllegalArgumentException>
```
