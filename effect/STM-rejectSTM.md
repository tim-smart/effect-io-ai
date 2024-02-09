# rejectSTM

Continue with the returned computation if the specified partial function
matches, translating the successful match into a failure, otherwise continue
with our held value.

To import and use `rejectSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.rejectSTM
```

**Signature**

```ts
export declare const rejectSTM: {
  <A, R2, E2>(pf: (a: A) => Option.Option<STM<E2, E2, R2>>): <R, E>(self: STM<A, E, R>) => STM<A, E2 | E, R2 | R>
  <R, E, A, R2, E2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<STM<E2, E2, R2>>): STM<A, E | E2, R | R2>
}
```
