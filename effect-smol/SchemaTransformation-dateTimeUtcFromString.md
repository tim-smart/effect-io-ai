Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateTimeUtcFromString

Decodes a date-time string into a `DateTime.Utc` and encodes it back to an ISO
string.

**Details**

Decode accepts strings supported by `DateTime.make`, converts the result to
UTC, and fails with `InvalidValue` when parsing fails. Encode uses
`DateTime.formatIso`.

**Signature**

```ts
declare const dateTimeUtcFromString: Transformation<DateTime.Utc, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1740)

Since v4.0.0