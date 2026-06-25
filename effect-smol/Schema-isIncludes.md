Package: `effect`<br />
Module: `Schema`<br />

## Schema.isIncludes

Validates at runtime that a string contains the specified literal substring.

**Details**

Notes:
The JSON Schema and arbitrary metadata use the substring as a raw regexp
pattern. If the substring contains regexp syntax, generated patterns may not be
equivalent to the runtime `includes` check.

**Signature**

```ts
declare const isIncludes: (includes: string, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6852)

Since v4.0.0