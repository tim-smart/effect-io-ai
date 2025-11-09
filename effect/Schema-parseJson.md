Package: `effect`<br />
Module: `Schema`<br />

## Schema.parseJson

The `ParseJson` combinator provides a method to convert JSON strings into the `unknown` type using the underlying
functionality of `JSON.parse`. It also utilizes `JSON.stringify` for encoding.

You can optionally provide a `ParseJsonOptions` to configure both `JSON.parse` and `JSON.stringify` executions.

Optionally, you can pass a schema `Schema<A, I, R>` to obtain an `A` type instead of `unknown`.

**Example**

```ts
import * as assert from "node:assert"
import * as Schema from "effect/Schema"

assert.deepStrictEqual(Schema.decodeUnknownSync(Schema.parseJson())(`{"a":"1"}`), { a: "1" })
assert.deepStrictEqual(Schema.decodeUnknownSync(Schema.parseJson(Schema.Struct({ a: Schema.NumberFromString })))(`{"a":"1"}`), { a: 1 })
```

**Signature**

```ts
declare const parseJson: { <S extends Schema.Any>(schema: S, options?: ParseJsonOptions): transform<SchemaClass<unknown, string>, S>; (options?: ParseJsonOptions): SchemaClass<unknown, string>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4843)

Since v3.10.0