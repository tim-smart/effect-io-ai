# FieldOption

Convert a field to one that is optional for all variants.

For the database variants, it will accept `null`able values.
For the JSON variants, it will also accept missing keys.

To import and use `FieldOption` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.FieldOption
```
