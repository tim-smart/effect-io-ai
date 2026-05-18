Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.timeZoneNamedFromString

Decodes an IANA time-zone identifier string into a
`DateTime.TimeZone.Named` and encodes a named time zone back to its `id`.

Decode fails with `InvalidValue` when the string is not a valid IANA time-zone
identifier.

**Signature**

```ts
declare const timeZoneNamedFromString: Transformation<DateTime.TimeZone.Named, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1597)

Since v4.0.0