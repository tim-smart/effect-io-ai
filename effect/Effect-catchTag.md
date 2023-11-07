# catchTag

Recovers from the specified tagged error.

To import and use `catchTag` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.catchTag
```

**Signature**

```ts
export declare const catchTag: {
  <K extends E extends { _tag: string } ? E['_tag'] : never, E, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | Exclude<E, { _tag: K }>, A1 | A>
  <R, E, A, K extends E extends { _tag: string } ? E['_tag'] : never, R1, E1, A1>(
    self: Effect<R, E, A>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): Effect<R | R1, E1 | Exclude<E, { _tag: K }>, A | A1>
}
```
