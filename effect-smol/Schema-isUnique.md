Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUnique

Validates that all items in an array are unique according to the provided
equivalence function.

**JSON Schema**

This check corresponds to the `uniqueItems: true` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `comparator`
constraint using the provided equivalence function to ensure generated arrays
contain only unique items.

**Signature**

```ts
declare const isUnique: <T>(annotations?: Annotations.Filter) => AST.Filter<ReadonlyArray<T>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6734)

Since v4.0.0