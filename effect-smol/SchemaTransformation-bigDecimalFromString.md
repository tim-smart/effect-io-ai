Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.bigDecimalFromString

Decodes a `string` into a `BigDecimal` and encodes a `BigDecimal` back to
its string representation.

When to use this:
- Parsing decimal number strings from APIs or user input.

Behavior:
- Decode: calls `BigDecimal.fromString(s)`. Fails with `InvalidValue` if the
  string is not a valid BigDecimal representation.
- Encode: returns `BigDecimal.format(bd)`.

**Signature**

```ts
declare const bigDecimalFromString: Transformation<BigDecimal.BigDecimal, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1313)

Since v4.0.0