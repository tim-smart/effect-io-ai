Package: `effect`<br />
Module: `Schema`<br />

## Schema.isEndsWith

Validates that a string ends with the specified suffix.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings ending with the specified suffix.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings end with the required suffix.

**Signature**

```ts
declare const isEndsWith: (endsWith: string, annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3766)

Since v4.0.0