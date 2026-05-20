Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZoneFromString

Schema interface for `TimeZoneFromString`, a transformation from IANA
identifier or offset strings to `DateTime.TimeZone` values.

**Signature**

```ts
export interface TimeZoneFromString extends decodeTo<TimeZone, String> {
  readonly "Rebuild": TimeZoneFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11189)

Since v4.0.0