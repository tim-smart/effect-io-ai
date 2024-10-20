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
  <A, B, E, R>(f: (a: A) => STM<B, E, R>): (elements: Iterable<A>) => STM<B, Array<E>, R>
  <A, B, E, R>(elements: Iterable<A>, f: (a: A) => STM<B, E, R>): STM<B, Array<E>, R>
}
```
