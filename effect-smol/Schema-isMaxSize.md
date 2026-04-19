Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxSize

Validates that a value has at most the specified size. Works with values
that have a `size` property, such as `Set` or `Map`.

**JSON Schema**

This check does not have a direct JSON Schema equivalent, as it applies to
values with a `size` property rather than standard JSON Schema types.

**Arbitrary**

When generating test data with fast-check, this applies a `maxLength`
constraint to the array representation to ensure generated values have at
most the required size.

**Signature**

```ts
declare const isMaxSize: (maxSize: number, annotations?: Annotations.Filter) => AST.Filter<{ readonly size: number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6679)

Since v4.0.0