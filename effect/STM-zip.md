# zip

Sequentially zips this value with the specified one.

To import and use `zip` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.zip
undefined

**Signature**

```ts
export declare const zip: {
  <A1, E1, R1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<[A, A1], E1 | E, R1 | R>
  <A, E, R, A1, E1, R1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<[A, A1], E | E1, R | R1>
}
```
