# modify

Apply a function to the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `modify` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.modify
```

**Signature**

```ts
export declare const modify: {
  <A, B>(i: number, f: (a: A) => B): (self: Iterable<A>) => (A | B)[]
  <A, B>(self: Iterable<A>, i: number, f: (a: A) => B): (A | B)[]
}
```
