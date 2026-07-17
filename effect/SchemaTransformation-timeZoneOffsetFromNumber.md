Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.timeZoneOffsetFromNumber

Decodes a numeric time-zone offset in milliseconds into a
`DateTime.TimeZone.Offset` and encodes it back to the offset number.

**When to use**

Use when you need a schema transformation to represent fixed-offset time
zones with numeric millisecond offsets.

**Details**

Decode uses `DateTime.zoneMakeOffset`; encode returns the offset's `offset`
field.

**See**

- `timeZoneFromString` for IANA or offset string encodings
- `timeZoneNamedFromString` for IANA named-zone strings

**Signature**

```ts
declare const timeZoneOffsetFromNumber: Transformation<DateTime.TimeZone.Offset, number, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaTransformation.ts#L1715)

Since v4.0.0