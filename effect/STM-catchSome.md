# catchSome

Recovers from some or all of the error cases.

To import and use `catchSome` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.catchSome
```

**Signature**

```ts
export declare const catchSome: {
  <E, R2, E2, A2>(pf: (error: E) => Option.Option<STM<R2, E2, A2>>): <R, A>(
    self: STM<R, E, A>
  ) => STM<R2 | R, E | E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: STM<R, E, A>, pf: (error: E) => Option.Option<STM<R2, E2, A2>>): STM<
    R | R2,
    E | E2,
    A | A2
  >
}
```
