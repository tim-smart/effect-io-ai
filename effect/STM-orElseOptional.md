# orElseOptional

Returns an effect that will produce the value of this effect, unless it
fails with the `None` value, in which case it will produce the value of the
specified effect.

To import and use `orElseOptional` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.orElseOptional
```

**Signature**

```ts
export declare const orElseOptional: {
  <R2, E2, A2>(that: LazyArg<STM<R2, Option.Option<E2>, A2>>): <R, E, A>(
    self: STM<R, Option.Option<E>, A>
  ) => STM<R2 | R, Option.Option<E2 | E>, A2 | A>
  <R, E, A, R2, E2, A2>(self: STM<R, Option.Option<E>, A>, that: LazyArg<STM<R2, Option.Option<E2>, A2>>): STM<
    R | R2,
    Option.Option<E | E2>,
    A | A2
  >
}
```
