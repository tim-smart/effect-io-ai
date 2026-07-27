Package: `effect`<br />
Module: `Schema`<br />

## Schema.isEndsWith

Validates at runtime that a string ends with the specified literal suffix.

**Details**

RegExp metacharacters in the suffix are escaped in JSON Schema and arbitrary
metadata so that the generated patterns retain literal `endsWith` semantics.

**Signature**

```ts
declare const isEndsWith: (endsWith: string, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7240)

Since v4.0.0