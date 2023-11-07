# collectSTM

Simultaneously filters and maps the value produced by this effect.

To import and use `collectSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.collectSTM
```

**Signature**

```ts
export declare const collectSTM: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<STM<R2, E2, A2>>): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: STM<R, E, A>, pf: (a: A) => Option.Option<STM<R2, E2, A2>>): STM<R | R2, E | E2, A2>
}
```
