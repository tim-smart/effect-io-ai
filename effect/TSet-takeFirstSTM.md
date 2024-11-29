# takeFirstSTM

Takes the first matching value, or retries until there is one.

To import and use `takeFirstSTM` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.takeFirstSTM
undefined

**Signature**

```ts
export declare const takeFirstSTM: {
  <A, B, E, R>(pf: (a: A) => STM.STM<B, Option.Option<E>, R>): (self: TSet<A>) => STM.STM<B, E, R>
  <A, B, E, R>(self: TSet<A>, pf: (a: A) => STM.STM<B, Option.Option<E>, R>): STM.STM<B, E, R>
}
```
