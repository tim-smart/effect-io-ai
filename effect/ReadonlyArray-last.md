# last

Get the last element in a `ReadonlyArray`, or `None` if the `ReadonlyArray` is empty.

To import and use `last` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.last
```

**Signature**

```ts
export declare const last: <A>(self: readonly A[]) => Option<A>
```
