Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUppercased

Validates that a string contains only uppercase characters.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings with only uppercase characters.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings contain only uppercase characters.

**Signature**

```ts
declare const isUppercased: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3832)

Since v4.0.0