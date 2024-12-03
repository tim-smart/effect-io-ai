# partition

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in a tupled fashion.

To import and use `partition` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.partition
```

**Signature**

```ts
export declare const partition: {
  <A, A2, E, R>(
    f: (a: A) => STM<A2, E, R>
  ): (elements: Iterable<A>) => STM<[excluded: Array<E>, satisfying: Array<A2>], never, R>
  <A, A2, E, R>(
    elements: Iterable<A>,
    f: (a: A) => STM<A2, E, R>
  ): STM<[excluded: Array<E>, satisfying: Array<A2>], never, R>
}
```
