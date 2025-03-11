## TaggedEnum

Create a tagged enum data type, which is a union of `Data` structs.

```ts
import * as assert from "node:assert"
import { Data } from "effect"

type HttpError = Data.TaggedEnum<{
  BadRequest: { readonly status: 400, readonly message: string }
  NotFound: { readonly status: 404, readonly message: string }
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

**Signature**

```ts
type TaggedEnum<A> = keyof A extends infer Tag ?
  Tag extends keyof A ? Types.Simplify<{ readonly _tag: Tag } & { readonly [K in keyof A[Tag]]: A[Tag][K] }>
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L284)

Since v2.0.0