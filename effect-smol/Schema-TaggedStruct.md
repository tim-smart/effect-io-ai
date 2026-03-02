Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedStruct

A tagged struct is a struct that includes a `_tag` field. This field is used
to identify the specific variant of the object, which is especially useful
when working with union types.

When using the `makeUnsafe` method, the `_tag` field is optional and will be
added automatically. However, when decoding or encoding, the `_tag` field
must be present in the input.

**Example** (Tagged struct as a shorthand for a struct with a `_tag` field)

```ts
import { Schema } from "effect"

// Defines a struct with a fixed `_tag` field
const tagged = Schema.TaggedStruct("A", {
  a: Schema.String
})

// This is the same as writing:
const equivalent = Schema.Struct({
  _tag: Schema.tag("A"),
  a: Schema.String
})
```

**Example** (Accessing the literal value of the tag)

```ts
import { Schema } from "effect"

const tagged = Schema.TaggedStruct("A", {
  a: Schema.String
})

// literal: "A"
const literal = tagged.fields._tag.schema.literal
```

**Signature**

```ts
declare const TaggedStruct: <const Tag extends AST.LiteralValue, const Fields extends Struct.Fields>(value: Tag, fields: Fields) => TaggedStruct<Tag, Fields>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3200)

Since v4.0.0