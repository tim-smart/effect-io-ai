# orElse

Tries this effect first, and if it fails or retries, tries the other
effect.

To import and use `orElse` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orElse
```

**Signature**

```ts
export declare const orElse: {
  <A2, E2, R2>(that: LazyArg<STM<A2, E2, R2>>): <A, E, R>(self: STM<A, E, R>) => STM<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: STM<A, E, R>, that: LazyArg<STM<A2, E2, R2>>): STM<A | A2, E2, R | R2>
}
```
