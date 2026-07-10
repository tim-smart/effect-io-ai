Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.bigDecimalFromString

Decodes a `string` into a `BigDecimal` and encodes a `BigDecimal` back to
its string representation.

**When to use**

Use when you need a schema transformation to parse decimal number strings
from APIs or user input.

**Details**

Decoding calls `BigDecimal.fromString(s)` and fails with `InvalidValue` if
the string is not a valid `BigDecimal` representation. Encoding returns
`BigDecimal.format(bd)`.

**Signature**

```ts
declare const bigDecimalFromString: Transformation<BigDecimal.BigDecimal, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1400)

Since v4.0.0