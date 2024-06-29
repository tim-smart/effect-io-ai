# zipRight

Sequentially zips this value with the specified one, discarding the first
element of the tuple.

To import and use `zipRight` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <A1, E1, R1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A1, E1 | E, R1 | R>
  <A, E, R, A1, E1, R1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<A1, E | E1, R | R1>
}
```
