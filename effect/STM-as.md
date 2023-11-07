# as

Maps the success value of this effect to the specified constant value.

To import and use `as` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.as
```

**Signature**

```ts
export declare const as: {
  <A2>(value: A2): <R, E, A>(self: STM<R, E, A>) => STM<R, E, A2>
  <R, E, A, A2>(self: STM<R, E, A>, value: A2): STM<R, E, A2>
}
```
