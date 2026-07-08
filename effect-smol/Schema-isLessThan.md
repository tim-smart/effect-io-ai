Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThan

Validates that a number is less than the specified value (exclusive).

**Details**

JSON Schema:

This check corresponds to the `exclusiveMaximum` constraint in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies an
`exclusiveMaximum` constraint to ensure generated numbers are less than the
specified value.

**Signature**

```ts
declare const isLessThan: (exclusiveMaximum: number, annotations?: Annotations.Filter) => SchemaAST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7388)

Since v4.0.0