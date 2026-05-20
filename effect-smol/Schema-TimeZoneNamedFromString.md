Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZoneNamedFromString

Schema interface for `TimeZoneNamedFromString`, a transformation between IANA
time zone identifier strings and `DateTime.TimeZone.Named` values.

**Signature**

```ts
export interface TimeZoneNamedFromString extends decodeTo<TimeZoneNamed, String> {
  readonly "Rebuild": TimeZoneNamedFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11101)

Since v4.0.0