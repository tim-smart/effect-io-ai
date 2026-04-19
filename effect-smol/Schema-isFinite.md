Package: `effect`<br />
Module: `Schema`<br />

## Schema.isFinite

Validates that a number is finite (not `Infinity`, `-Infinity`, or `NaN`).

**JSON Schema**

This check does not have a direct JSON Schema equivalent, but ensures the
number is valid and finite.

**Arbitrary**

When generating test data with fast-check, this applies `noDefaultInfinity`
and `noNaN` constraints to ensure generated numbers are finite.

**Signature**

```ts
declare const isFinite: (annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5594)

Since v4.0.0