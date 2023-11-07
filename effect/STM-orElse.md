# orElse

Tries this effect first, and if it fails or retries, tries the other
effect.

To import and use `orElse` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.orElse
```

**Signature**

```ts
export declare const orElse: {
  <R2, E2, A2>(that: LazyArg<STM<R2, E2, A2>>): <R, E, A>(self: STM<R, E, A>) => STM<R2 | R, E2, A2 | A>
  <R, E, A, R2, E2, A2>(self: STM<R, E, A>, that: LazyArg<STM<R2, E2, A2>>): STM<R | R2, E2, A | A2>
}
```
