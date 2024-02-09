# as

Maps the success value of this effect to the specified constant value.

To import and use `as` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.as
```

**Signature**

```ts
export declare const as: {
  <A2>(value: A2): <A, E, R>(self: STM<A, E, R>) => STM<A2, E, R>
  <R, E, A, A2>(self: STM<A, E, R>, value: A2): STM<A2, E, R>
}
```
