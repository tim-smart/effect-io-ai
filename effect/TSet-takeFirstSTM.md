# takeFirstSTM

Takes the first matching value, or retries until there is one.

To import and use `takeFirstSTM` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.takeFirstSTM
```

**Signature**

```ts
export declare const takeFirstSTM: {
  <A, R, E, B>(pf: (a: A) => STM.STM<R, Option.Option<E>, B>): (self: TSet<A>) => STM.STM<R, E, B>
  <A, R, E, B>(self: TSet<A>, pf: (a: A) => STM.STM<R, Option.Option<E>, B>): STM.STM<R, E, B>
}
```
