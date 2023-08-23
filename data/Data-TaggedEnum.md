# TaggedEnum

Create a tagged enum data type, which is a union of `Data` structs.

```ts
import * as Data from '@effect/data/Data'

type HttpError = Data.TaggedEnum<{
  BadRequest: { status: 400; message: string }
  NotFound: { status: 404; message: string }
}>

// Equivalent to:
type HttpErrorPlain =
  | Data.Data<{
      readonly _tag: 'BadRequest'
      readonly status: 400
      readonly message: string
    }>
  | Data.Data<{
      readonly _tag: 'NotFound'
      readonly status: 404
      readonly message: string
    }>
```

To import and use `TaggedEnum` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.TaggedEnum
```
