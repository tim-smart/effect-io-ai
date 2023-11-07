# drop

Drop a max number of elements from the start of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `drop` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.drop
```

**Signature**

```ts
export declare const drop: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
