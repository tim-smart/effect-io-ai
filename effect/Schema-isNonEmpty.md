Package: `effect`<br />
Module: `Schema`<br />

## Schema.isNonEmpty

Validates that a value has at least one element. Works with strings and arrays.
This is equivalent to `isMinLength(1)`.

**Details**

JSON Schema:

This check corresponds to the `minLength: 1` constraint for strings or the
`minItems: 1` constraint for arrays in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies a `minLength: 1`
constraint to ensure generated strings or arrays are non-empty.

**Signature**

```ts
declare const isNonEmpty: (annotations?: Annotations.Filter) => SchemaAST.Filter<{ readonly length: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8026)

Since v4.0.0