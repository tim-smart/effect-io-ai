# removeAll

Removes elements from the set.

To import and use `removeAll` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.removeAll
```

**Signature**

```ts
export declare const removeAll: {
  <A>(iterable: Iterable<A>): (self: TSet<A>) => STM.STM<void>
  <A>(self: TSet<A>, iterable: Iterable<A>): STM.STM<void>
}
```
