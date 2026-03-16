Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.schemaJsonField

Extract a JSON value from the first occurrence of the given `field` in the
`UrlParams`.

```ts
import { Schema } from "effect"
import { UrlParams } from "effect/unstable/http"

const extractFoo = UrlParams.schemaJsonField("foo").pipe(
  Schema.decodeTo(Schema.Struct({
    some: Schema.String,
    number: Schema.Number
  }))
)

console.log(
  Schema.decodeSync(extractFoo)(UrlParams.fromInput({
    foo: JSON.stringify({ some: "bar", number: 42 }),
    baz: "qux"
  }))
)
```

**Signature**

```ts
declare const schemaJsonField: (field: string) => schemaJsonField
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L459)

Since v4.0.0