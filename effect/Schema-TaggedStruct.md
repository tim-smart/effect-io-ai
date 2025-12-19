Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedStruct

A tagged struct is a struct that has a tag property that is used to distinguish between different types of objects.

The tag is optional when using the `make` method.

**Example**

```ts
import * as assert from "node:assert"
import { Schema } from "effect"

const User = Schema.TaggedStruct("User", {
  name: Schema.String,
  age: Schema.Number
})

assert.deepStrictEqual(User.make({ name: "John", age: 44 }), { _tag: "User", name: "John", age: 44 })
```

**Signature**

```ts
declare const TaggedStruct: <Tag extends AST.LiteralValue, Fields extends Struct.Fields>(value: Tag, fields: Fields) => TaggedStruct<Tag, Fields>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3009)

Since v3.10.0