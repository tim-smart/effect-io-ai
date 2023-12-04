# fromJson

The `fromJson` combinator offers a method to convert JSON strings into the `A` type using the underlying
functionality of `JSON.parse`. It also employs `JSON.stringify` for encoding.

To import and use `fromJson` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.fromJson
```

**Signature**

```ts
export declare const fromJson: <I, A>(schema: Schema<I, A>, options?: JsonOptions) => Schema<string, A>
```
