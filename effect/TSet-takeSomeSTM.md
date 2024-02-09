# takeSomeSTM

Takes all matching values, or retries until there is at least one.

To import and use `takeSomeSTM` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.takeSomeSTM
```

**Signature**

```ts
export declare const takeSomeSTM: {
  <A, R, E, B>(pf: (a: A) => STM.STM<B, Option.Option<E>, R>): (self: TSet<A>) => STM.STM<[B, ...B[]], E, R>
  <A, R, E, B>(self: TSet<A>, pf: (a: A) => STM.STM<B, Option.Option<E>, R>): STM.STM<[B, ...B[]], E, R>
}
```
