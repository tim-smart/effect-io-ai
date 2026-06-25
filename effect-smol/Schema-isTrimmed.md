Package: `effect`<br />
Module: `Schema`<br />

## Schema.isTrimmed

Validates that a string has no leading or trailing whitespace.

**Details**

JSON Schema:

This check corresponds to a `pattern` constraint in JSON Schema that
matches strings without leading or trailing whitespace.

Arbitrary:

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the trimmed pattern.

**Signature**

```ts
declare const isTrimmed: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6479)

Since v4.0.0