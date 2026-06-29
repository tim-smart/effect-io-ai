Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertiesLengthBetween

Validates that an object contains between `minimum` and `maximum` properties (inclusive).
This includes both string and symbol keys when counting properties.

**Details**

JSON Schema:

This check corresponds to `minProperties` and `maxProperties`
constraints in JSON Schema.

Arbitrary:

When generating test data with fast-check, this applies node-local
`minLength` and `maxLength` constraints. Object generators interpret them as
the final number of own properties.

**Signature**

```ts
declare const isPropertiesLengthBetween: (minimum: number, maximum: number, annotations?: Annotations.Filter) => SchemaAST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8291)

Since v4.0.0