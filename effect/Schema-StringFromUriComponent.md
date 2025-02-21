# StringFromUriComponent

Decodes a URI component encoded string into a UTF-8 string.
Can be used to store data in a URL.

To import and use `StringFromUriComponent` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.StringFromUriComponent
```

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
export declare const StringFromUriComponent: transformOrFail<SchemaClass<string, string, never>, typeof String$, never>
```
