# modifyOption

Apply a function to the element at the specified index, creating a new `Array`,
or return `None` if the index is out of bounds.

To import and use `modifyOption` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.modifyOption
```

**Signature**

```ts
export declare const modifyOption: {
  <A, B>(i: number, f: (a: A) => B): (self: Iterable<A>) => Option<(A | B)[]>
  <A, B>(self: Iterable<A>, i: number, f: (a: A) => B): Option<(A | B)[]>
}
```
