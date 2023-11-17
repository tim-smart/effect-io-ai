# replicate

Replicates the given effect n times. If 0 or negative numbers are given, an
empty `Chunk` will be returned.

To import and use `replicate` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.replicate
```

**Signature**

```ts
export declare const replicate: {
  (n: number): <R, E, A>(self: STM<R, E, A>) => STM<R, E, A>[]
  <R, E, A>(self: STM<R, E, A>, n: number): STM<R, E, A>[]
}
```
