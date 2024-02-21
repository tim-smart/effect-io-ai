# unlessSTM

The moral equivalent of `if (!p) exp` when `p` has side-effects

To import and use `unlessSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.unlessSTM
```

**Signature**

```ts
export declare const unlessSTM: {
  <E2, R2>(predicate: STM<boolean, E2, R2>): <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E2 | E, R2 | R>
  <A, E, R, E2, R2>(self: STM<A, E, R>, predicate: STM<boolean, E2, R2>): STM<Option.Option<A>, E | E2, R | R2>
}
```
