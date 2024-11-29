# appendElement

Appends an element to the end of a tuple.

To import and use `appendElement` from the "Tuple" module:

ts
import \* as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.appendElement
undefined

**Signature**

```ts
export declare const appendElement: {
  <B>(that: B): <A extends ReadonlyArray<unknown>>(self: A) => [...A, B]
  <A extends ReadonlyArray<unknown>, B>(self: A, that: B): [...A, B]
}
```
