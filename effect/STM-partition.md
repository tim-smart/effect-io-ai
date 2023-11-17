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
  <R, E, A, A2>(f: (a: A) => STM<R, E, A2>): (elements: Iterable<A>) => STM<R, never, [E[], A2[]]>
  <R, E, A, A2>(elements: Iterable<A>, f: (a: A) => STM<R, E, A2>): STM<R, never, [E[], A2[]]>
}
```
