# parseJson

The `ParseJson` combinator provides a method to convert JSON strings into the `unknown` type using the underlying
functionality of `JSON.parse`. It also utilizes `JSON.stringify` for encoding.

You can optionally provide a `ParseJsonOptions` to configure both `JSON.parse` and `JSON.stringify` executions.

Optionally, you can pass a schema `Schema<A, I, R>` to obtain an `A` type instead of `unknown`.

To import and use `parseJson` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.parseJson
undefined

**Example**

```ts
import * as Schema from "effect/Schema"

assert.deepStrictEqual(Schema.decodeUnknownSync(Schema.parseJson())(`{"a":"1"}`), { a: "1" })
assert.deepStrictEqual(
  Schema.decodeUnknownSync(Schema.parseJson(Schema.Struct({ a: Schema.NumberFromString })))(`{"a":"1"}`),
  { a: 1 }
)
```

**Signature**

```ts
export declare const parseJson: {
  <A, I, R>(schema: Schema<A, I, R>, options?: ParseJsonOptions): SchemaClass<A, string, R>
  (options?: ParseJsonOptions): SchemaClass<unknown, string>
}
```
