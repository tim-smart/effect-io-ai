Package: `effect`<br />
Module: `Schema`<br />

## Schema.toStandardSchemaV1

Returns a "Standard Schema" object conforming to the [Standard Schema
v1](https://standardschema.dev/) specification.

This function creates a schema whose `validate` method attempts to decode and
validate the provided input synchronously. If the underlying `Schema`
includes any asynchronous components (e.g., asynchronous message resolutions
or checks), then validation will necessarily return a `Promise` instead.

**Example** (Creating a standard schema from a regular schema)

```ts
import { Schema } from "effect"

// Define custom hook functions for error formatting
const leafHook = (issue: any) => {
  switch (issue._tag) {
    case "InvalidType":
      return "Expected different type"
    case "InvalidValue":
      return "Invalid value provided"
    case "MissingKey":
      return "Required property missing"
    case "UnexpectedKey":
      return "Unexpected property found"
    case "Forbidden":
      return "Operation not allowed"
    case "OneOf":
      return "Multiple valid options available"
    default:
      return "Validation error"
  }
}

// Create a standard schema from a regular schema
const PersonSchema = Schema.Struct({
  name: Schema.NonEmptyString,
  age: Schema.Number.check(Schema.isBetween({ minimum: 0, maximum: 150 }))
})

const standardSchema = Schema.toStandardSchemaV1(PersonSchema, {
  leafHook
})

// The standard schema can be used with any Standard Schema v1 compatible library
const validResult = standardSchema["~standard"].validate({
  name: "Alice",
  age: 30
})
console.log(validResult) // { value: { name: "Alice", age: 30 } }

const invalidResult = standardSchema["~standard"].validate({
  name: "",
  age: 200
})
console.log(invalidResult) // { issues: [{ path: ["name"], message: "..." }, { path: ["age"], message: "..." }] }
```

**Signature**

```ts
declare const toStandardSchemaV1: <S extends Top & { readonly DecodingServices: never; }>(self: S, options?: { readonly leafHook?: Issue.LeafHook | undefined; readonly checkHook?: Issue.CheckHook | undefined; readonly parseOptions?: AST.ParseOptions | undefined; }) => StandardSchemaV1<S["Encoded"], S["Type"]> & S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L542)

Since v4.0.0