Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStartsWith

Validates at runtime that a string starts with the specified literal prefix.

**Details**

RegExp metacharacters in the prefix are escaped in JSON Schema and arbitrary
metadata so that the generated patterns retain literal `startsWith` semantics.

**Signature**

```ts
declare const isStartsWith: (startsWith: string, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7186)

Since v4.0.0