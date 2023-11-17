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
  <R1, E1, A1>(that: LazyArg<STM<R1, E1, A1>>): <R, E, A>(self: STM<R, E, A>) => STM<R1 | R, E1 | E, A1 | A>
  <R, E, A, R1, E1, A1>(self: STM<R, E, A>, that: LazyArg<STM<R1, E1, A1>>): STM<R | R1, E | E1, A | A1>
}
```
