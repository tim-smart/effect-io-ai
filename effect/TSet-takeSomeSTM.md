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
  <A, R, E, B>(pf: (a: A) => STM.STM<R, Option.Option<E>, B>): (self: TSet<A>) => STM.STM<R, E, [B, ...B[]]>
  <A, R, E, B>(self: TSet<A>, pf: (a: A) => STM.STM<R, Option.Option<E>, B>): STM.STM<R, E, [B, ...B[]]>
}
```
