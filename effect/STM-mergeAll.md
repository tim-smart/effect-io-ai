# mergeAll

Merges an `Iterable<STM>` to a single `STM`, working sequentially.

To import and use `mergeAll` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.mergeAll
```

**Signature**

```ts
export declare const mergeAll: {
  <A2, A>(zero: A2, f: (a2: A2, a: A) => A2): <R, E>(iterable: Iterable<STM<R, E, A>>) => STM<R, E, A2>
  <R, E, A2, A>(iterable: Iterable<STM<R, E, A>>, zero: A2, f: (a2: A2, a: A) => A2): STM<R, E, A2>
}
```
