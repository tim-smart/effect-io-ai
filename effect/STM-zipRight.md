# zipRight

Sequentially zips this value with the specified one, discarding the first
element of the tuple.

To import and use `zipRight` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <R1, E1, A1>(that: STM<R1, E1, A1>): <R, E, A>(self: STM<R, E, A>) => STM<R1 | R, E1 | E, A1>
  <R, E, A, R1, E1, A1>(self: STM<R, E, A>, that: STM<R1, E1, A1>): STM<R | R1, E | E1, A1>
}
```
