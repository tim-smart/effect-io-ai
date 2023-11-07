# forEach

Executes the specified function `f` for each element in the list.

To import and use `forEach` from the "MutableList" module:

```ts
import * as MutableList from 'effect/MutableList'

// Can be accessed like this
MutableList.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A>(f: (element: A) => void): (self: MutableList<A>) => void
  <A>(self: MutableList<A>, f: (element: A) => void): void
}
```
