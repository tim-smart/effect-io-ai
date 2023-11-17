# ParseJson

The `ParseJson` schema offers a method to convert JSON strings into the `unknown` type using the underlying
functionality of `JSON.parse`. It also employs `JSON.stringify` for encoding.

To import and use `ParseJson` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.ParseJson
```

**Signature**

```ts
export declare const ParseJson: Schema<string, unknown>
```
