# add

Stores new element in the set.

To import and use `add` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.add
```

**Signature**

```ts
export declare const add: {
  <A>(value: A): (self: TSet<A>) => STM.STM<void>
  <A>(self: TSet<A>, value: A): STM.STM<void>
}
```
