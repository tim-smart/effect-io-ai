# collectSTM

Simultaneously filters and maps the value produced by this effect.

To import and use `collectSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.collectSTM
```

**Signature**

```ts
export declare const collectSTM: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<STM<A2, E2, R2>>): <R, E>(self: STM<A, E, R>) => STM<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<STM<A2, E2, R2>>): STM<A2, E | E2, R | R2>
}
```
