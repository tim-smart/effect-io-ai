Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct

Defines a struct schema from a map of field schemas.

Each field value is a schema. Use `optionalKey` or `optional` to
mark fields as optional, and `mutableKey` to mark them as mutable.

The resulting schema's `Type` is a readonly object type with the fields'
decoded types. The `Encoded` form mirrors the field schemas' encoded types.

**Example** (Basic struct)

```ts
import { Schema } from "effect"

const Person = Schema.Struct({
  name: Schema.String,
  age: Schema.Number,
  email: Schema.optionalKey(Schema.String)
})

// { readonly name: string; readonly age: number; readonly email?: string }
type Person = typeof Person.Type

const alice = Schema.decodeUnknownSync(Person)({ name: "Alice", age: 30 })
console.log(alice)
// { name: 'Alice', age: 30 }
```

**Signature**

```ts
declare const Struct: <const Fields extends Struct.Fields>(fields: Fields) => Struct<Fields>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2480)

Since v4.0.0