# transform

Atomically updates all elements using a pure function.

To import and use `transform` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.transform
```

**Signature**

```ts
export declare const transform: {
  <A>(f: (a: A) => A): (self: TSet<A>) => STM.STM<void>
  <A>(self: TSet<A>, f: (a: A) => A): STM.STM<void>
}
```
