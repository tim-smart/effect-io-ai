# remove

Removes a single element from the set.

To import and use `remove` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.remove
```

**Signature**

```ts
export declare const remove: {
  <A>(value: A): (self: TSet<A>) => STM.STM<never, never, void>
  <A>(self: TSet<A>, value: A): STM.STM<never, never, void>
}
```
