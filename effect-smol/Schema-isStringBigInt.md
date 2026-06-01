Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringBigInt

Validates that a string is a signed base-10 integer literal for Effect's
BigInt string encoding.

**Details**

The check uses the pattern `^-?\d+$`. It does not accept leading `+`, decimal
points, exponent notation, separators, or non-decimal inputs such as
hexadecimal strings.

JSON Schema:
This check corresponds to a `pattern` constraint with the same signed
base-10 integer pattern.

**Signature**

```ts
declare const isStringBigInt: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6221)

Since v4.0.0