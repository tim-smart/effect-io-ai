Package: `effect`<br />
Module: `Schema`<br />

## Schema.isInt

Validates that a number is a safe integer (within the safe integer range
that can be exactly represented in JavaScript).

**JSON Schema**

This check corresponds to the `type: "integer"` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies an `isInteger: true`
constraint to ensure generated numbers are integers.

**Signature**

```ts
declare const isInt: (annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4361)

Since v4.0.0