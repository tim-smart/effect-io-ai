# head

Get the first element of a `ReadonlyArray`, or `None` if the `ReadonlyArray` is empty.

To import and use `head` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.head
```

**Signature**

```ts
export declare const head: <A>(self: readonly A[]) => Option<A>
```
