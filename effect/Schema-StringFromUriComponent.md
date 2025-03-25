Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringFromUriComponent

Decodes a URI component encoded string into a UTF-8 string.
Can be used to store data in a URL.

**Example**

```ts
import { Schema } from "effect"

const PaginationSchema = Schema.Struct({
  maxItemPerPage: Schema.Number,
  page: Schema.Number
})

const UrlSchema = Schema.compose(Schema.StringFromUriComponent, Schema.parseJson(PaginationSchema))

console.log(Schema.encodeSync(UrlSchema)({ maxItemPerPage: 10, page: 1 }))
// Output: %7B%22maxItemPerPage%22%3A10%2C%22page%22%3A1%7D
```

**Signature**

```ts
declare const StringFromUriComponent: transformOrFail<SchemaClass<string, string, never>, typeof String$, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6374)

Since v3.12.0