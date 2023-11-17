# tapErrorTag

Returns an effect that effectfully "peeks" at the specific tagged failure of this effect.

To import and use `tapErrorTag` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapErrorTag
```

**Signature**

```ts
export declare const tapErrorTag: {
  <K extends E extends { _tag: string } ? E["_tag"] : never, E, R1, E1, A1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E | E1, A>
  <R, E, A, K extends E extends { _tag: string } ? E["_tag"] : never, R1, E1, A1>(
    self: Effect<R, E, A>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<R1, E1, A1>
  ): Effect<R | R1, E | E1, A>
}
```
