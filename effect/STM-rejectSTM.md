# rejectSTM

Continue with the returned computation if the specified partial function
matches, translating the successful match into a failure, otherwise continue
with our held value.

To import and use `rejectSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.rejectSTM
```

**Signature**

```ts
export declare const rejectSTM: {
  <A, R2, E2>(pf: (a: A) => Option.Option<STM<R2, E2, E2>>): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: STM<R, E, A>, pf: (a: A) => Option.Option<STM<R2, E2, E2>>): STM<R | R2, E | E2, A>
}
```
