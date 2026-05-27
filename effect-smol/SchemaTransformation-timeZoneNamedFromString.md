Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.timeZoneNamedFromString

Decodes an IANA time-zone identifier string into a
`DateTime.TimeZone.Named` and encodes a named time zone back to its `id`.

**When to use**

Use when a schema transformation should accept only IANA time-zone identifier
strings and produce `DateTime.TimeZone.Named` values.

**Details**

Decode fails with `InvalidValue` when the string is not a valid IANA time-zone
identifier.

**See**

- `timeZoneFromString` for time-zone strings that may be either IANA identifiers or offset strings

**Signature**

```ts
declare const timeZoneNamedFromString: Transformation<DateTime.TimeZone.Named, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1703)

Since v4.0.0