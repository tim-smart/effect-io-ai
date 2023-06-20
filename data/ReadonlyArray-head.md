# head

Get the first element of a `ReadonlyArray`, or `None` if the `ReadonlyArray` is empty.

To import and use `head` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.head
```

**Signature**

```ts
export declare const head: <A>(self: readonly A[]) => Option<A>
```
