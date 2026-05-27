Package: `effect`<br />
Module: `Schema`<br />

## Schema.isEndsWith

Validates at runtime that a string ends with the specified literal suffix.

**Details**

Notes:
The JSON Schema and arbitrary metadata are built from `${endsWith}$` without
escaping regexp metacharacters. If the suffix contains regexp syntax, generated
patterns may not be equivalent to the runtime `endsWith` check.

**Signature**

```ts
declare const isEndsWith: (endsWith: string, annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6142)

Since v4.0.0