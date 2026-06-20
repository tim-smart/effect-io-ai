Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualTo

Validates that a number is greater than or equal to the specified value
(inclusive).

**Details**

JSON Schema:

This check corresponds to the `minimum` constraint in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies a `minimum` constraint
to ensure generated numbers are greater than or equal to the specified value.

**Signature**

```ts
declare const isGreaterThanOrEqualTo: (minimum: number, annotations?: Annotations.Filter) => SchemaAST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7116)

Since v4.0.0