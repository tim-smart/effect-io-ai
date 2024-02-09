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
  <A, R2, E2, _>(f: (a: A) => STM<_, E2, R2>): <R, E>(self: STM<A, E, R>) => STM<A, E2 | E, R2 | R>
  <R, E, A, R2, E2, _>(self: STM<A, E, R>, f: (a: A) => STM<_, E2, R2>): STM<A, E | E2, R | R2>
}
```
