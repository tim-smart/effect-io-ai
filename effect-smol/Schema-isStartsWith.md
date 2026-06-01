Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStartsWith

Validates at runtime that a string starts with the specified literal prefix.

**Details**

Notes:
The JSON Schema and arbitrary metadata are built from `^${startsWith}` without
escaping regexp metacharacters. If the prefix contains regexp syntax, generated
patterns may not be equivalent to the runtime `startsWith` check.

**Signature**

```ts
declare const isStartsWith: (startsWith: string, annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6400)

Since v4.0.0