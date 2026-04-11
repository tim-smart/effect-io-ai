Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualTo

Validates that a number is less than or equal to the specified value
(inclusive).

**JSON Schema**

This check corresponds to the `maximum` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `max` constraint
to ensure generated numbers are less than or equal to the specified value.

**Signature**

```ts
declare const isLessThanOrEqualTo: (maximum: number, annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5825)

Since v4.0.0