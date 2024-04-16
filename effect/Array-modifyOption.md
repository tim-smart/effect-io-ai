# modifyOption

Apply a function to the element at the specified index, creating a new `Array`,
or return `None` if the index is out of bounds.

To import and use `modifyOption` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modifyOption
```

**Signature**

```ts
export declare const modifyOption: {
  <A, B>(i: number, f: (a: A) => B): (self: Iterable<A>) => Option<(A | B)[]>
  <A, B>(self: Iterable<A>, i: number, f: (a: A) => B): Option<(A | B)[]>
}
```
