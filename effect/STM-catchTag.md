# catchTag

Recovers from the specified tagged error.

To import and use `catchTag` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.catchTag
```

**Signature**

```ts
export declare const catchTag: {
  <K extends E["_tag"] & string, E extends { _tag: string }, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<A1, E1, R1>
  ): <R, A>(self: STM<A, E, R>) => STM<A1 | A, E1 | Exclude<E, { _tag: K }>, R1 | R>
  <R, E extends { _tag: string }, A, K extends E["_tag"] & string, R1, E1, A1>(
    self: STM<A, E, R>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<A1, E1, R1>
  ): STM<A | A1, E1 | Exclude<E, { _tag: K }>, R | R1>
}
```
