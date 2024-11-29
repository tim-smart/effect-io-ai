# tail

Get all but the first element of an `Iterable`, creating a new `Array`, or `None` if the `Iterable` is empty.

To import and use `tail` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.tail
undefined

**Signature**

```ts
export declare const tail: <A>(self: Iterable<A>) => Option<Array<A>>
```
