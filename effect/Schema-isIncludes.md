Package: `effect`<br />
Module: `Schema`<br />

## Schema.isIncludes

Validates at runtime that a string contains the specified literal substring.

**Details**

RegExp metacharacters in the substring are escaped in JSON Schema and
arbitrary metadata so that the generated patterns retain literal `includes`
semantics.

**Signature**

```ts
declare const isIncludes: (includes: string, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7295)

Since v4.0.0