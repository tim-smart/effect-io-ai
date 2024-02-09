# map

Maps the value produced by the effect.

To import and use `map` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <R, E>(self: STM<A, E, R>) => STM<B, E, R>
  <R, E, A, B>(self: STM<A, E, R>, f: (a: A) => B): STM<B, E, R>
}
```
