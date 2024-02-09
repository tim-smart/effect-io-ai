# TaggedEnum

Create a tagged enum data type, which is a union of `Data` structs.

```ts
import * as Data from "effect/Data"

type HttpError = Data.TaggedEnum<{
  BadRequest: { readonly status: 400; readonly message: string }
  NotFound: { readonly status: 404; readonly message: string }
}>

// Equivalent to:
type HttpErrorPlain =
  | {
      readonly _tag: "BadRequest"
      readonly status: 400
      readonly message: string
    }
  | {
      readonly _tag: "NotFound"
      readonly status: 404
      readonly message: string
    }
```

To import and use `TaggedEnum` from the "Data" module:

```ts
import * as Data from "effect/Data"
// Can be accessed like this
Data.TaggedEnum
```
