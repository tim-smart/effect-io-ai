# schemaStruct

Extract schema from all key-value pairs in the given `UrlParams`.

To import and use `schemaStruct` from the "UrlParams" module:

```ts
import * as UrlParams from "@effect/platform/UrlParams"
// Can be accessed like this
UrlParams.schemaStruct
```

**Example**

```ts
import { Effect, Schema } from "effect"
import { UrlParams } from "@effect/platform"

Effect.gen(function* () {
  const urlParams = UrlParams.fromInput({ a: [10, "string"], b: false })
  const result = yield* UrlParams.schemaStruct(
    Schema.Struct({
      a: Schema.Tuple(Schema.NumberFromString, Schema.String),
      b: Schema.BooleanFromString
    })
  )(urlParams)

  assert.deepStrictEqual(result, {
    a: [10, "string"],
    b: false
  })
})
```

**Signature**

```ts
export declare const schemaStruct: <A, I extends Record<string, string | ReadonlyArray<string> | undefined>, R>(
  schema: Schema.Schema<A, I, R>,
  options?: ParseOptions | undefined
) => (self: UrlParams) => Effect.Effect<A, ParseResult.ParseError, R>
```
