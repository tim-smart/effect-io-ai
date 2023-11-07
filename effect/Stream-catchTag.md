# catchTag

Switches over to the stream produced by the provided function in case this
one fails with an error matching the given `_tag`.

To import and use `catchTag` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.catchTag
```

**Signature**

```ts
export declare const catchTag: {
  <K extends E['_tag'] & string, E extends { _tag: string }, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Stream<R1, E1, A1>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R1 | R, E1 | Exclude<E, { _tag: K }>, A1 | A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string, R1, E1, A1>(
    self: Stream<R, E, A>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Stream<R1, E1, A1>
  ): Stream<R | R1, E1 | Exclude<E, { _tag: K }>, A | A1>
}
```
