# zipLeft

Sequentially zips this value with the specified one, discarding the second
element of the tuple.

To import and use `zipLeft` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <R1, E1, A1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A, E1 | E, R1 | R>
  <R, E, A, R1, E1, A1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<A, E | E1, R | R1>
}
```
