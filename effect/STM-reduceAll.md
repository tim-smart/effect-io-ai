# reduceAll

Reduces an `Iterable<STM>` to a single `STM`, working sequentially.

To import and use `reduceAll` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.reduceAll
```

**Signature**

```ts
export declare const reduceAll: {
  <R2, E2, A>(initial: STM<R2, E2, A>, f: (x: A, y: A) => A): <R, E>(
    iterable: Iterable<STM<R, E, A>>
  ) => STM<R2 | R, E2 | E, A>
  <R, E, R2, E2, A>(iterable: Iterable<STM<R, E, A>>, initial: STM<R2, E2, A>, f: (x: A, y: A) => A): STM<
    R | R2,
    E | E2,
    A
  >
}
```
