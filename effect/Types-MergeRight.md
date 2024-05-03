# MergeRight

Merges two object where the keys of the right object take precedence in the case of a conflict.

To import and use `MergeRight` from the "Types" module:

```ts
import * as Types from "effect/Types"
// Can be accessed like this
Types.MergeRight
```

**Example**

```ts
import type { Types } from "effect"
type MergeRight = Types.MergeRight<{ a: number; b: number }, { a: string }> // { a: string; b: number; }
```
