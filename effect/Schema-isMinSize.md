Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinSize

Validates that a value has at least the specified size. Works with values
that have a `size` property, such as `Set` or `Map`.

**Details**

JSON Schema:

This check does not have a direct JSON Schema equivalent, as it applies to
values with a `size` property rather than standard JSON Schema types.

Arbitrary:

When generating test data with fast-check, this applies a node-local
`minLength` constraint. Generators for values with a final `.size`, such as
sets and maps, interpret it as final cardinality.

**Signature**

```ts
declare const isMinSize: (minSize: number, annotations?: Annotations.Filter) => SchemaAST.Filter<{ readonly size: number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8155)

Since v4.0.0