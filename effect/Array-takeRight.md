# takeRight

Keep only a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

To import and use `takeRight` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.takeRight
```

**Signature**

```ts
export declare const takeRight: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
