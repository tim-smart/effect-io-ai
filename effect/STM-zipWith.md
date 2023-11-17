# zipWith

Sequentially zips this value with the specified one, combining the values
using the specified combiner function.

To import and use `zipWith` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <R1, E1, A1, A, A2>(
    that: STM<R1, E1, A1>,
    f: (a: A, b: A1) => A2
  ): <R, E>(self: STM<R, E, A>) => STM<R1 | R, E1 | E, A2>
  <R, E, R1, E1, A1, A, A2>(self: STM<R, E, A>, that: STM<R1, E1, A1>, f: (a: A, b: A1) => A2): STM<R | R1, E | E1, A2>
}
```
