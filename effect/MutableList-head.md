# head

Returns the first element of the list, if it exists.

To import and use `head` from the "MutableList" module:

ts
import \* as MutableList from "effect/MutableList"
// Can be accessed like this
MutableList.head
undefined

**Signature**

```ts
export declare const head: <A>(self: MutableList<A>) => A | undefined
```
