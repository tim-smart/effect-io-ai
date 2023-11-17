# tap

"Peeks" at the success of transactional effect.

To import and use `tap` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.tap
```

**Signature**

```ts
export declare const tap: {
  <A, X extends A, R2, E2, _>(f: (a: X) => STM<R2, E2, _>): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, A>
  <R, E, A, X extends A, R2, E2, _>(self: STM<R, E, A>, f: (a: X) => STM<R2, E2, _>): STM<R | R2, E | E2, A>
}
```
