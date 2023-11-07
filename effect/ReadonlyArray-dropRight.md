# dropRight

Drop a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `dropRight` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.dropRight
```

**Signature**

```ts
export declare const dropRight: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
