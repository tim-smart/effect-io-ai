Package: `effect`<br />
Module: `Schema`<br />

## Schema.isInt32

Validates that a number is a 32-bit signed integer (range: -2,147,483,648 to
2,147,483,647).

**JSON Schema**

This check corresponds to the `format: "int32"` constraint in OpenAPI 3.1,
or `minimum`/`maximum` constraints in other JSON Schema targets.

**Arbitrary**

When generating test data with fast-check, this applies integer and range
constraints to ensure generated numbers are 32-bit signed integers.

**Signature**

```ts
declare const isInt32: (annotations?: Annotations.Filter) => AST.FilterGroup<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4406)

Since v4.0.0