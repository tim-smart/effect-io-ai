# extend

Extends a schema with another schema.

Not all extensions are supported, and their support depends on the nature of the involved schemas.

Possible extensions include:

- `Schema.String` with another `Schema.String` refinement or a string literal
- `Schema.Number` with another `Schema.Number` refinement or a number literal
- `Schema.Boolean` with another `Schema.Boolean` refinement or a boolean literal
- A struct with another struct where overlapping fields support extension
- A struct with in index signature
- A struct with a union of supported schemas
- A refinement of a struct with a supported schema
- A suspend of a struct with a supported schema

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

// const extended: Schema.Schema<
//   {
//     readonly a: string
//     readonly b: string
//   } & {
//     readonly c: string
//   } & {
//     readonly [x: string]: string
//   }
// >
const extended = Schema.asSchema(
  schema.pipe(
    Schema.extend(Schema.Struct({ c: Schema.String })), // <= you can add more fields
    Schema.extend(Schema.Record({ key: Schema.String, value: Schema.String })) // <= you can add index signatures
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
