Package: `effect`<br />
Module: `Schema`<br />

## Schema.tagDefaultOmit

Similar to `tag`, but provides itself as a default when decoding and omits
the value from the output when encoding.

**Signature**

```ts
declare const tagDefaultOmit: <Tag extends AST.LiteralValue>(literal: Tag) => withDecodingDefaultKey<tag<Tag>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3149)

Since v4.0.0