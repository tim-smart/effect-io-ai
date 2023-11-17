# prepend

Prepends the specified value to the beginning of the list.

To import and use `prepend` from the "MutableList" module:

```ts
import * as MutableList from "effect/MutableList"
// Can be accessed like this
MutableList.prepend
```

**Signature**

```ts
export declare const prepend: {
  <A>(value: A): (self: MutableList<A>) => MutableList<A>
  <A>(self: MutableList<A>, value: A): MutableList<A>
}
```
