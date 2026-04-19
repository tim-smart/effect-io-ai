Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLowercased

Validates that a string contains only lowercase characters.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings with only lowercase characters.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings contain only lowercase characters.

**Signature**

```ts
declare const isLowercased: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5485)

Since v4.0.0