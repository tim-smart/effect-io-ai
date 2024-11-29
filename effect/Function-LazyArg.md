# LazyArg

A lazy argument.

To import and use `LazyArg` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.LazyArg
undefined

**Example**

```ts
import { LazyArg, constant } from "effect/Function"

const constNull: LazyArg<null> = constant(null)
```
