Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxProperties

Validates that an object contains at most the specified number of properties.
This includes both string and symbol keys when counting properties.

**Details**

JSON Schema:

This check corresponds to the `maxProperties` constraint in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies a node-local
`maxLength` constraint. Object generators interpret it as the final number
of own properties.

**Signature**

```ts
declare const isMaxProperties: (maxProperties: number, annotations?: Annotations.Filter) => SchemaAST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8305)

Since v4.0.0