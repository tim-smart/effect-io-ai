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
  <A, R, E, B>(pf: (a: A) => STM.STM<B, Option.Option<E>, R>): (self: TSet<A>) => STM.STM<B, E, R>
  <A, R, E, B>(self: TSet<A>, pf: (a: A) => STM.STM<B, Option.Option<E>, R>): STM.STM<B, E, R>
}
```
