# zip

Sequentially zips this value with the specified one.

To import and use `zip` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.zip
```

**Signature**

```ts
export declare const zip: {
  <R1, E1, A1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<[A, A1], E1 | E, R1 | R>
  <R, E, A, R1, E1, A1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<[A, A1], E | E1, R | R1>
}
```
