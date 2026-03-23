Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThan

Validates that a number is greater than the specified value (exclusive).

**JSON Schema**

This check corresponds to the `exclusiveMinimum` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `min` constraint
with `minExcluded: true` to ensure generated numbers are greater than the
specified value.

**Signature**

```ts
declare const isGreaterThan: (exclusiveMinimum: number, annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5632)

Since v4.0.0