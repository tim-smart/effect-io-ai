# extend

Extends a schema by adding additional fields or index signatures.

1. It only supports **structs**, refinements of structs, unions of structs, suspensions of structs
   (informally `Supported = Struct | Refinement of Supported | Union of Supported | suspend(() => Supported)`)
2. The arguments must represent disjoint types (e.g., `extend(Struct({ a: String }), Struct({ a: String })))` raises an error)

To import and use `extend` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.extend
```

**Example**

```ts
import * as Schema from "@effect/schema/Schema"

const schema = Schema.Struct({
  a: Schema.String,
  b: Schema.String
})

// const extended: S.Schema<{
//     readonly [x: string]: string;
//     readonly a: string;
//     readonly b: string;
//     readonly c: string;
// }>
const extended = Schema.asSchema(
  schema.pipe(
    Schema.extend(Schema.Struct({ c: Schema.String })), // <= you can add more fields
    Schema.extend(Schema.Record(Schema.String, Schema.String)) // <= you can add index signatures
  )
)
```

**Signature**

```ts
export declare const extend: {
  <That extends Schema.Any>(that: That): <Self extends Schema.Any>(self: Self) => extend<Self, That>
  <Self extends Schema.Any, That extends Schema.Any>(self: Self, that: That): extend<Self, That>
}
```
