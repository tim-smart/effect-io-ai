Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThan

Validates that a number is less than the specified value (exclusive).

**JSON Schema**

This check corresponds to the `exclusiveMaximum` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `max` constraint
with `maxExcluded: true` to ensure generated numbers are less than the
specified value.

**Signature**

```ts
declare const isLessThan: (exclusiveMaximum: number, annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5675)

Since v4.0.0