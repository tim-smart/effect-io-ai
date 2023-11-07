# catchTag

Recovers from the specified tagged error.

To import and use `catchTag` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.catchTag
```

**Signature**

```ts
export declare const catchTag: {
  <K extends E['_tag'] & string, E extends { _tag: string }, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<R1, E1, A1>
  ): <R, A>(self: STM<R, E, A>) => STM<R1 | R, E1 | Exclude<E, { _tag: K }>, A1 | A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string, R1, E1, A1>(
    self: STM<R, E, A>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => STM<R1, E1, A1>
  ): STM<R | R1, E1 | Exclude<E, { _tag: K }>, A | A1>
}
```
