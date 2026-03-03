Package: `effect`<br />
Module: `Schema`<br />

## Schema.isSizeBetween

Validates that a value's size is within the specified range. Works with
values that have a `size` property, such as `Set` or `Map`.

**JSON Schema**

This check does not have a direct JSON Schema equivalent, as it applies to
values with a `size` property rather than standard JSON Schema types.

**Arbitrary**

When generating test data with fast-check, this applies `minLength` and
`maxLength` constraints to ensure generated values have a size within the
specified range.

**Signature**

```ts
declare const isSizeBetween: (minimum: number, maximum: number, annotations?: Annotations.Filter) => AST.Filter<{ readonly size: number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5076)

Since v4.0.0