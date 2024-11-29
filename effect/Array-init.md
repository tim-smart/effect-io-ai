# init

Get all but the last element of an `Iterable`, creating a new `Array`, or `None` if the `Iterable` is empty.

To import and use `init` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.init
undefined

**Signature**

```ts
export declare const init: <A>(self: Iterable<A>) => Option<Array<A>>
```
