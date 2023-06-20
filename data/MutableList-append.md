# append

Appends the specified value to the end of the list.

To import and use `append` from the "MutableList" module:

```ts
import * as MutableList from '@effect/data/MutableList'

// Can be accessed like this
MutableList.append
```

**Signature**

```ts
export declare const append: {
  <A>(value: A): (self: MutableList<A>) => MutableList<A>
  <A>(self: MutableList<A>, value: A): MutableList<A>
}
```
