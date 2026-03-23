Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertiesLengthBetween

Validates that an object contains between `minimum` and `maximum` properties (inclusive).
This includes both string and symbol keys when counting properties.

**JSON Schema**

This check corresponds to `minProperties` and `maxProperties`
constraints in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies `minLength` and
`maxLength` constraints to the array of entries that is generated before
being converted to an object.

**Signature**

```ts
declare const isPropertiesLengthBetween: (minimum: number, maximum: number, annotations?: Annotations.Filter) => AST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6669)

Since v4.0.0