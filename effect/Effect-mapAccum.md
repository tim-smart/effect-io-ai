# mapAccum

Statefully and effectfully maps over the elements of this chunk to produce
new elements.

To import and use `mapAccum` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B, E, R>(
    zero: S,
    f: (s: S, a: A, i: number) => Effect<readonly [S, B], E, R>
  ): (elements: Iterable<A>) => Effect<[S, B[]], E, R>
  <A, S, B, E, R>(
    elements: Iterable<A>,
    zero: S,
    f: (s: S, a: A, i: number) => Effect<readonly [S, B], E, R>
  ): Effect<[S, B[]], E, R>
}
```
