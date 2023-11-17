# remove

Delete the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `remove` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.remove
```

**Signature**

```ts
export declare const remove: { (i: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, i: number): A[] }
```
