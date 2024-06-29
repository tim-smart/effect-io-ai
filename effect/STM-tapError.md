# tapError

"Peeks" at the error of the transactional effect.

To import and use `tapError` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E, X, E2, R2>(f: (error: NoInfer<E>) => STM<X, E2, R2>): <A, R>(self: STM<A, E, R>) => STM<A, E | E2, R2 | R>
  <A, E, R, X, E2, R2>(self: STM<A, E, R>, f: (error: E) => STM<X, E2, R2>): STM<A, E | E2, R | R2>
}
```
