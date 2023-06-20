# LazyArg

A lazy argument.

To import and use `LazyArg` from the "Function" module:

```ts
import * as Function from '@effect/data/Function'

// Can be accessed like this
Function.LazyArg
```

**Example**

```ts
import { LazyArg, constant } from '@effect/data/Function'

export const constNull: LazyArg<null> = constant(null)
```
