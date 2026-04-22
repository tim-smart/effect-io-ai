Package: `effect`<br />
Module: `Schema`<br />

## Schema.tagDefaultOmit

Like `tag`, but additionally omits the tag field from the encoded output.
Useful when the encoded form (e.g. JSON) does not include the discriminator key,
but the decoded type and constructor still need it.

**Example** (Tag omitted during encoding)

```ts
import { Schema } from "effect"

const A = Schema.Struct({
  _tag: Schema.tagDefaultOmit("A"),
  value: Schema.Number
})

// Encode strips the _tag field
const encoded = Schema.encodeUnknownSync(A)({ _tag: "A", value: 1 })
// encoded: { value: 1 }
```

**See**

- `tag` for the variant that keeps the tag during encoding

**Signature**

```ts
declare const tagDefaultOmit: <Tag extends AST.LiteralValue>(literal: Tag) => withDecodingDefaultKey<tag<Tag>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4578)

Since v4.0.0