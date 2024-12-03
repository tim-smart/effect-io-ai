# cond

Similar to Either.cond, evaluate the predicate, return the given A as
success if predicate returns true, and the given E as error otherwise

To import and use `cond` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.cond
```

**Signature**

```ts
export declare const cond: <A, E>(predicate: LazyArg<boolean>, error: LazyArg<E>, result: LazyArg<A>) => STM<A, E>
```
