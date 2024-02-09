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
  <E, R2, E2, _>(f: (error: NoInfer<E>) => STM<_, E2, R2>): <R, A>(self: STM<A, E, R>) => STM<A, E | E2, R2 | R>
  <R, A, E, R2, E2, _>(self: STM<A, E, R>, f: (error: E) => STM<_, E2, R2>): STM<A, E | E2, R | R2>
}
```
