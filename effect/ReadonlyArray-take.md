# take

Keep only a max number of elements from the start of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `take` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.take
```

**Signature**

```ts
export declare const take: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
