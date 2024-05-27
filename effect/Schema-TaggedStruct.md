# TaggedStruct

A tagged struct is a struct that has a tag property that is used to distinguish between different types of objects.

The tag is optional when using the `make` method.

To import and use `TaggedStruct` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.TaggedStruct
```

**Example**

```ts
import { Schema } from "@effect/schema"

const User = Schema.TaggedStruct("User", {
  name: Schema.String,
  age: Schema.Number
})

assert.deepStrictEqual(User.make({ name: "John", age: 44 }), { _tag: "User", name: "John", age: 44 })
```

**Signature**

```ts
export declare const TaggedStruct: <Tag extends AST.LiteralValue, Fields extends Struct.Fields>(
  value: Tag,
  fields: Fields
) => TaggedStruct<Tag, Fields>
```
