Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.layerCurrentZoneNamed

Create a Layer from the given IANA time zone identifier.

**Signature**

```ts
declare const layerCurrentZoneNamed: (zoneId: string) => Layer.Layer<CurrentTimeZone, IllegalArgumentException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1675)

Since v3.6.0