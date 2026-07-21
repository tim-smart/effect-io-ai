Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinProperties

Validates that an object contains at least the specified number of
properties. This includes both string and symbol keys when counting
properties.

**Details**

JSON Schema:

This check corresponds to the `minProperties` constraint in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies a node-local
`minLength` constraint. Object generators interpret it as the final number
of own properties.

**Signature**

```ts
declare const isMinProperties: (minProperties: number, annotations?: Annotations.Filter) => SchemaAST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8283)

Since v4.0.0