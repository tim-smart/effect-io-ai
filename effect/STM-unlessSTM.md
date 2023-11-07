# unlessSTM

The moral equivalent of `if (!p) exp` when `p` has side-effects

To import and use `unlessSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.unlessSTM
```

**Signature**

```ts
export declare const unlessSTM: {
  <R2, E2>(predicate: STM<R2, E2, boolean>): <R, E, A>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, Option.Option<A>>
  <R, E, A, R2, E2>(self: STM<R, E, A>, predicate: STM<R2, E2, boolean>): STM<R | R2, E | E2, Option.Option<A>>
}
```
