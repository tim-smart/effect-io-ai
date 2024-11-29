# Has

Determines if a record contains any of the given keys.

To import and use `Has` from the "Types" module:

ts
import \* as Types from "effect/Types"
// Can be accessed like this
Types.Has
undefined

**Example**

```ts
import type { Types } from "effect"

type Res1 = Types.Has<{ a: number }, "a" | "b"> // true
type Res2 = Types.Has<{ c: number }, "a" | "b"> // false
```
