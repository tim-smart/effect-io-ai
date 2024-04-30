# DeepMutable

Like `Types.Mutable`, but works recursively.

To import and use `DeepMutable` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.DeepMutable
```

**Example**

```ts
import type * as Types from "effect/Types"

type DeepMutableStruct = Types.DeepMutable<{
  readonly a: string
  readonly b: readonly string[]
}>
// { a: string; b: string[] }
```
