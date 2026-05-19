Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.timeZoneOffsetFromNumber

Decodes a numeric time-zone offset in milliseconds into a
`DateTime.TimeZone.Offset` and encodes it back to the offset number.

Decode uses `DateTime.zoneMakeOffset`; encode returns the offset's `offset`
field.

**Signature**

```ts
declare const timeZoneOffsetFromNumber: Transformation<DateTime.TimeZone.Offset, number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1607)

Since v4.0.0