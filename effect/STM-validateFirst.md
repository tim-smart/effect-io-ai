# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

To import and use `validateFirst` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.validateFirst
```

**Signature**

```ts
export declare const validateFirst: {
  <R, E, A, B>(f: (a: A) => STM<R, E, B>): (elements: Iterable<A>) => STM<R, E[], B>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => STM<R, E, B>): STM<R, E[], B>
}
```
