# some

Check if a predicate holds true for some `ReadonlyArray` member.

To import and use `some` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.some
```

**Signature**

```ts
export declare const some: <A>(predicate: Predicate<A>) => (self: readonly A[]) => self is readonly [A, ...A[]]
```
