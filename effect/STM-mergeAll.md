# mergeAll

Merges an `Iterable<STM>` to a single `STM`, working sequentially.

To import and use `mergeAll` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.mergeAll
undefined

**Signature**

```ts
export declare const mergeAll: {
  <A2, A>(zero: A2, f: (a2: A2, a: A) => A2): <E, R>(iterable: Iterable<STM<A, E, R>>) => STM<A2, E, R>
  <A, E, R, A2>(iterable: Iterable<STM<A, E, R>>, zero: A2, f: (a2: A2, a: A) => A2): STM<A2, E, R>
}
```
