# tapError

"Peeks" at the error of the transactional effect.

To import and use `tapError` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E, X extends E, R2, E2, _>(f: (error: X) => STM<R2, E2, _>): <R, A>(self: STM<R, E, A>) => STM<R2 | R, E | E2, A>
  <R, A, E, X extends E, R2, E2, _>(self: STM<R, E, A>, f: (error: X) => STM<R2, E2, _>): STM<R | R2, E | E2, A>
}
```
