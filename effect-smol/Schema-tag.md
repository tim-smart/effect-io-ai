Package: `effect`<br />
Module: `Schema`<br />

## Schema.tag

Creates a schema for a literal value and automatically provides itself as a
default.

The `tag` function combines a literal schema with a constructor default,
making it perfect for discriminated unions and tagged data structures. The
tag value is automatically provided when the field is missing during
construction.

**Signature**

```ts
declare const tag: <Tag extends AST.LiteralValue>(literal: Tag) => tag<Tag>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3139)

Since v4.0.0