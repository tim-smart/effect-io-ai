# reduceAll

Reduces an `Iterable<STM>` to a single `STM`, working sequentially.

To import and use `reduceAll` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.reduceAll
```

**Signature**

```ts
export declare const reduceAll: {
  <R2, E2, A>(
    initial: STM<A, E2, R2>,
    f: (x: A, y: A) => A
  ): <R, E>(iterable: Iterable<STM<A, E, R>>) => STM<A, E2 | E, R2 | R>
  <R, E, R2, E2, A>(
    iterable: Iterable<STM<A, E, R>>,
    initial: STM<A, E2, R2>,
    f: (x: A, y: A) => A
  ): STM<A, E | E2, R | R2>
}
```
