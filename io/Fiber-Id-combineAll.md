# combineAll

Combines a set of `FiberId`s into a single `FiberId`.

To import and use `combineAll` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.combineAll
```

**Signature**

```ts
export declare const combineAll: (fiberIds: HashSet.HashSet<FiberId>) => FiberId
```
