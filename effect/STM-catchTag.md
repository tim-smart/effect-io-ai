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
  <K extends E["_tag"] & string, E extends { _tag: string }, A1, E1, R1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<A1, E1, R1>
  ): <A, R>(self: STM<A, E, R>) => STM<A1 | A, E1 | Exclude<E, { _tag: K }>, R1 | R>
  <A, E extends { _tag: string }, R, K extends E["_tag"] & string, A1, E1, R1>(
    self: STM<A, E, R>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<A1, E1, R1>
  ): STM<A | A1, E1 | Exclude<E, { _tag: K }>, R | R1>
}
```
