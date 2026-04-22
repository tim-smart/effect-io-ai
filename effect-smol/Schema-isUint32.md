Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUint32

Validates that a number is a 32-bit unsigned integer (range: 0 to
4,294,967,295).

**JSON Schema**

This check corresponds to the `format: "uint32"` constraint in OpenAPI 3.1,
or `minimum`/`maximum` constraints in other JSON Schema targets.

**Arbitrary**

When generating test data with fast-check, this applies integer and range
constraints to ensure generated numbers are 32-bit unsigned integers.

**Signature**

```ts
declare const isUint32: (annotations?: Annotations.Filter) => AST.FilterGroup<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6064)

Since v4.0.0