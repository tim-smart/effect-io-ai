# orTry

Tries this effect first, and if it enters retry, then it tries the other
effect. This is an equivalent of Haskell's orElse.

To import and use `orTry` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orTry
```

**Signature**

```ts
export declare const orTry: {
  <R1, E1, A1>(that: LazyArg<STM<A1, E1, R1>>): <A, E, R>(self: STM<A, E, R>) => STM<A1 | A, E1 | E, R1 | R>
  <R, E, A, R1, E1, A1>(self: STM<A, E, R>, that: LazyArg<STM<A1, E1, R1>>): STM<A | A1, E | E1, R | R1>
}
```
