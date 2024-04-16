# remove

Delete the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `remove` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.remove
```

**Signature**

```ts
export declare const remove: { (i: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, i: number): A[] }
```
