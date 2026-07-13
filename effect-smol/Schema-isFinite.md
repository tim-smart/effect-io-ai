Package: `effect`<br />
Module: `Schema`<br />

## Schema.isFinite

Validates that a number is finite (not `Infinity`, `-Infinity`, or `NaN`).

**Details**

JSON Schema:

This check does not have a direct JSON Schema equivalent, but ensures the
number is valid and finite.

Arbitrary:

When generating test data with fast-check, this applies `noNaN: true` and
`noInfinity: true` constraints to ensure generated numbers are finite.

**Signature**

```ts
declare const isFinite: (annotations?: Annotations.Filter) => SchemaAST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7084)

Since v4.0.0