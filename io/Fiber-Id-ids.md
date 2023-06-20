# ids

Get the set of identifiers for this `FiberId`.

To import and use `ids` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.ids
```

**Signature**

```ts
export declare const ids: (self: FiberId) => HashSet.HashSet<number>
```
