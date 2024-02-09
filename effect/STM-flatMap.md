# flatMap

Feeds the value produced by this effect to the specified function, and then
runs the returned effect as well to produce its results.

To import and use `flatMap` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, R1, E1, A2>(f: (a: A) => STM<A2, E1, R1>): <R, E>(self: STM<A, E, R>) => STM<A2, E1 | E, R1 | R>
  <R, E, A, R1, E1, A2>(self: STM<A, E, R>, f: (a: A) => STM<A2, E1, R1>): STM<A2, E | E1, R | R1>
}
```
