Package: `@effect/platform`<br />
Module: `UrlParams`<br />

## UrlParams.schemaStruct

Extract schema from all key-value pairs in the given `UrlParams`.

**Example**

```ts
import * as assert from "node:assert"
import { Effect, Schema } from "effect"
import { UrlParams } from "@effect/platform"

Effect.gen(function* () {
  const urlParams = UrlParams.fromInput({ "a": [10, "string"], "b": false })
  const result = yield* UrlParams.schemaStruct(Schema.Struct({
    a: Schema.Tuple(Schema.NumberFromString, Schema.String),
    b: Schema.BooleanFromString
  }))(urlParams)

  assert.deepStrictEqual(result, {
    a: [10, "string"],
    b: false
  })
})
```

**Signature**

```ts
declare const schemaStruct: <A, I extends Record<string, string | ReadonlyArray<string> | undefined>, R>(schema: Schema.Schema<A, I, R>, options?: ParseOptions | undefined) => (self: UrlParams) => Effect.Effect<A, ParseResult.ParseError, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/UrlParams.ts#L329)

Since v1.0.0