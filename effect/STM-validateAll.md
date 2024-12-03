# validateAll

Feeds elements of type `A` to `f` and accumulates all errors in error
channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use `STM.partition`.

To import and use `validateAll` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.validateAll
```

**Signature**

```ts
export declare const validateAll: {
  <A, B, E, R>(f: (a: A) => STM<B, E, R>): (elements: Iterable<A>) => STM<Array<B>, [E, ...Array<E>], R>
  <A, B, E, R>(elements: Iterable<A>, f: (a: A) => STM<B, E, R>): STM<Array<B>, [E, ...Array<E>], R>
}
```
