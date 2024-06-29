# MergeLeft

Merges two object where the keys of the left object take precedence in the case of a conflict.

To import and use `MergeLeft` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.MergeLeft
```

**Example**

```ts
import type { Types } from "effect"
type MergeLeft = Types.MergeLeft<{ a: number; b: number }, { a: string }> // { a: number; b: number; }
```
