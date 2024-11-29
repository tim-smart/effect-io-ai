# Tags

Returns the tags in a type.

To import and use `Tags` from the "Types" module:

ts
import \* as Types from "effect/Types"
// Can be accessed like this
Types.Tags
undefined

**Example**

```ts
import type { Types } from "effect"

type Res = Types.Tags<string | { _tag: "a" } | { _tag: "b" }> // "a" | "b"
```
