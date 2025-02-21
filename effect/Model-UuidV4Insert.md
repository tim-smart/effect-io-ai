# UuidV4Insert

A field that represents a binary UUID v4 that is generated on inserts.

To import and use `UuidV4Insert` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.UuidV4Insert
```

**Signature**

```ts
export declare const UuidV4Insert: <const B extends string | symbol>(
  schema: Schema.brand<typeof Schema.Uint8ArrayFromSelf, B>
) => UuidV4Insert<B>
```
