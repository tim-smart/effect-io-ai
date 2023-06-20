# toSet

Convert a `FiberId` into a `HashSet<FiberId>`.

To import and use `toSet` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.toSet
```

**Signature**

```ts
export declare const toSet: (self: FiberId) => HashSet.HashSet<Runtime>
```
