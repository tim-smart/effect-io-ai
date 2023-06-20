# every

Check if a predicate holds true for every `ReadonlyArray` member.

To import and use `every` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.every
```

**Signature**

```ts
export declare function every<A, B extends A>(
  refinement: Refinement<A, B>
): Refinement<ReadonlyArray<A>, ReadonlyArray<B>>
export declare function every<A>(predicate: Predicate<A>): Predicate<ReadonlyArray<A>>
```
