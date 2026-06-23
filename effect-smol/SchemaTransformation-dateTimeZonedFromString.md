Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateTimeZonedFromString

Decodes a zoned date-time string into a `DateTime.Zoned` and encodes it back
to an ISO zoned string.

**When to use**

Use when you need a schema transformation for ISO zoned date-time strings
that decode to `DateTime.Zoned` and encode with `DateTime.formatIsoZoned`.

**Details**

Decode uses `DateTime.makeZonedFromString` and fails with `InvalidValue` when
the input is not a valid zoned date-time. Encode uses
`DateTime.formatIsoZoned`.

**See**

- `dateTimeUtcFromString` for date-time strings that should decode to `DateTime.Utc` and encode as UTC ISO strings

**Signature**

```ts
declare const dateTimeZonedFromString: Transformation<DateTime.Zoned, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1805)

Since v4.0.0