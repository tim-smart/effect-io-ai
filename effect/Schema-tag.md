## tag

Returns a property signature that represents a tag.
A tag is a literal value that is used to distinguish between different types of objects.
The tag is optional when using the `make` method.

**Example**

```ts
import * as assert from "node:assert"
import { Schema } from "effect"

const User = Schema.Struct({
  _tag: Schema.tag("User"),
  name: Schema.String,
  age: Schema.Number
})

assert.deepStrictEqual(User.make({ name: "John", age: 44 }), { _tag: "User", name: "John", age: 44 })
```

**See**

- `TaggedStruct`

**Signature**

```ts
declare const tag: <Tag extends AST.LiteralValue>(tag: Tag) => tag<Tag>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2948)

Since v3.10.0