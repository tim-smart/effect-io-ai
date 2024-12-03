# JsonFromString

A field that represents a JSON value stored as text in the database.

The "json" variants will use the object schema directly.

To import and use `JsonFromString` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.JsonFromString
```

**Signature**

```ts
export declare const JsonFromString: <S extends Schema.Schema.All | Schema.PropertySignature.All>(
  schema: S
) => JsonFromString<S>
```
