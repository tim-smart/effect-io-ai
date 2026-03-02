Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxProperties

Validates that an object contains at most the specified number of properties.
This includes both string and symbol keys when counting properties.

**JSON Schema**

This check corresponds to the `maxProperties` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `maxLength`
constraint to the array of entries that is generated before being converted
to an object, ensuring the resulting object has at most the required number
of properties.

**Signature**

```ts
declare const isMaxProperties: (maxProperties: number, annotations?: Annotations.Filter) => AST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5170)

Since v4.0.0