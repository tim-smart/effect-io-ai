Package: `effect`<br />
Module: `Schema`<br />

## Schema.tagDefaultOmit

Creates a literal `_tag` schema that is omitted from encoded output.

**When to use**

Use to decode data that omits the discriminator field while still constructing
values with a `_tag` for tagged union matching.

**Details**

The tag is filled during decoding and construction, like `tag`, but is
omitted when encoding.

**Example** (Omitting tags during encoding)

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
declare const tagDefaultOmit: <Tag extends SchemaAST.LiteralValue>(literal: Tag) => withDecodingDefaultKey<tag<Tag>, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6010)

Since v4.0.0