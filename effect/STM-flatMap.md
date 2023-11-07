# flatMap

Feeds the value produced by this effect to the specified function, and then
runs the returned effect as well to produce its results.

To import and use `flatMap` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, R1, E1, A2>(f: (a: A) => STM<R1, E1, A2>): <R, E>(self: STM<R, E, A>) => STM<R1 | R, E1 | E, A2>
  <R, E, A, R1, E1, A2>(self: STM<R, E, A>, f: (a: A) => STM<R1, E1, A2>): STM<R | R1, E | E1, A2>
}
```
