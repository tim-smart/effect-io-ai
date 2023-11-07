# map

Maps the value produced by the effect.

To import and use `map` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <R, E>(self: STM<R, E, A>) => STM<R, E, B>
  <R, E, A, B>(self: STM<R, E, A>, f: (a: A) => B): STM<R, E, B>
}
```
