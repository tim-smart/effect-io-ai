# tag

Returns a property signature that represents a tag.
A tag is a literal value that is used to distinguish between different types of objects.
The tag is optional when using the `make` method.

To import and use `tag` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.tag
```

**Example**

```ts
import { Schema } from "effect"

const User = Schema.Struct({
  _tag: Schema.tag("User"),
  name: Schema.String,
  age: Schema.Number
})

assert.deepStrictEqual(User.make({ name: "John", age: 44 }), { _tag: "User", name: "John", age: 44 })
```

**Signature**

```ts
export declare const tag: <Tag extends AST.LiteralValue>(tag: Tag) => tag<Tag>
```
