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
    that: STM<A1, E1, R1>,
    f: (a: A, b: A1) => A2
  ): <R, E>(self: STM<A, E, R>) => STM<A2, E1 | E, R1 | R>
  <R, E, R1, E1, A1, A, A2>(self: STM<A, E, R>, that: STM<A1, E1, R1>, f: (a: A, b: A1) => A2): STM<A2, E | E1, R | R1>
}
```
