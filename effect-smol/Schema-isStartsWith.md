Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStartsWith

Validates that a string starts with the specified prefix.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings starting with the specified prefix.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings start with the required prefix.

**Signature**

```ts
declare const isStartsWith: (startsWith: string, annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5261)

Since v4.0.0