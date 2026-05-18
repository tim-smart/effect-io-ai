Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateTimeZonedFromString

Decodes a zoned date-time string into a `DateTime.Zoned` and encodes it back
to an ISO zoned string.

Decode uses `DateTime.makeZonedFromString` and fails with `InvalidValue` when
the input is not a valid zoned date-time. Encode uses
`DateTime.formatIsoZoned`.

**Signature**

```ts
declare const dateTimeZonedFromString: Transformation<DateTime.Zoned, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1667)

Since v4.0.0