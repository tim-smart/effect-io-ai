Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.timeZoneFromString

Decodes a string into a `DateTime.TimeZone` and encodes a time zone back to
its string representation.

**When to use**

Use when schema decoding should accept either an IANA time-zone identifier or
an offset string and produce a general `DateTime.TimeZone`.

**Details**

Accepted decode inputs include valid IANA identifiers and offset strings such
as `"+03:00"`. Decode fails with `InvalidValue` when the string cannot be
parsed as a time zone.

**See**

- `timeZoneNamedFromString` for IANA named-zone strings only
- `timeZoneOffsetFromNumber` for fixed-offset zones encoded as numbers

**Signature**

```ts
declare const timeZoneFromString: Transformation<DateTime.TimeZone, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1735)

Since v4.0.0