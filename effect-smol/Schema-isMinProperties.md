Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinProperties

Validates that an object contains at least the specified number of
properties. This includes both string and symbol keys when counting
properties.

**JSON Schema**

This check corresponds to the `minProperties` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `minLength`
constraint to the array of entries that is generated before being converted
to an object, ensuring the resulting object has at least the required number
of properties.

**Signature**

```ts
declare const isMinProperties: (minProperties: number, annotations?: Annotations.Filter) => AST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6568)

Since v4.0.0