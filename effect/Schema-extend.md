Package: `effect`<br />
Module: `Schema`<br />

## Schema.extend

Extends a schema with another schema.

Not all extensions are supported, and their support depends on the nature of
the involved schemas.

Possible extensions include:
- `Schema.String` with another `Schema.String` refinement or a string literal
- `Schema.Number` with another `Schema.Number` refinement or a number literal
- `Schema.Boolean` with another `Schema.Boolean` refinement or a boolean
  literal
- A struct with another struct where overlapping fields support extension
- A struct with in index signature
- A struct with a union of supported schemas
- A refinement of a struct with a supported schema
- A suspend of a struct with a supported schema
- A transformation between structs where the “from” and “to” sides have no
  overlapping fields with the target struct

**Example**

```ts
import * as Schema from "effect/Schema"

const schema = Schema.Struct({
  a: Schema.String,
  b: Schema.String
})

// const extended: Schema<
//   {
//     readonly a: string
//     readonly b: string
//   } & {
//     readonly c: string
//   } & {
//     readonly [x: string]: string
//   }
// >
const extended = Schema.asSchema(schema.pipe(
  Schema.extend(Schema.Struct({ c: Schema.String })), // <= you can add more fields
  Schema.extend(Schema.Record({ key: Schema.String, value: Schema.String })) // <= you can add index signatures
))
```

**Signature**

```ts
declare const extend: { <That extends Schema.Any>(that: That): <Self extends Schema.Any>(self: Self) => extend<Self, That>; <Self extends Schema.Any, That extends Schema.Any>(self: Self, that: That): extend<Self, That>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3504)

Since v3.10.0