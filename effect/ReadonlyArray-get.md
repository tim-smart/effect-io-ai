# get

This function provides a safe way to read a value at a particular index from a `ReadonlyArray`.

To import and use `get` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.get
```

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: readonly A[]) => Option<A>
  <A>(self: readonly A[], index: number): Option<A>
}
```
