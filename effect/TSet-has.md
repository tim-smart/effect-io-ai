# has

Tests whether or not set contains an element.

To import and use `has` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.has
```

**Signature**

```ts
export declare const has: {
  <A>(value: A): (self: TSet<A>) => STM.STM<never, never, boolean>
  <A>(self: TSet<A>, value: A): STM.STM<never, never, boolean>
}
```
