# orElseOptional

Returns an effect that will produce the value of this effect, unless it
fails with the `None` value, in which case it will produce the value of the
specified effect.

To import and use `orElseOptional` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.orElseOptional
undefined

**Signature**

```ts
export declare const orElseOptional: {
  <A2, E2, R2>(
    that: LazyArg<STM<A2, Option.Option<E2>, R2>>
  ): <A, E, R>(self: STM<A, Option.Option<E>, R>) => STM<A2 | A, Option.Option<E2 | E>, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: STM<A, Option.Option<E>, R>,
    that: LazyArg<STM<A2, Option.Option<E2>, R2>>
  ): STM<A | A2, Option.Option<E | E2>, R | R2>
}
```
