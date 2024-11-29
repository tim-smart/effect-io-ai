# append

Appends the specified element to the end of the `MutableList`.

To import and use `append` from the "MutableList" module:

ts
import \* as MutableList from "effect/MutableList"
// Can be accessed like this
MutableList.append
undefined

**Signature**

```ts
export declare const append: {
  <A>(value: A): (self: MutableList<A>) => MutableList<A>
  <A>(self: MutableList<A>, value: A): MutableList<A>
}
```
