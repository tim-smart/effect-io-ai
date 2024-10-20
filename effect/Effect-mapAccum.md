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
  <S, A, B, E, R, I extends Iterable<A> = Iterable<A>>(
    zero: S,
    f: (s: S, a: RA.ReadonlyArray.Infer<I>, i: number) => Effect<readonly [S, B], E, R>
  ): (elements: I) => Effect<[S, RA.ReadonlyArray.With<I, B>], E, R>
  <A, S, B, E, R, I extends Iterable<A> = Iterable<A>>(
    elements: I,
    zero: S,
    f: (s: S, a: RA.ReadonlyArray.Infer<I>, i: number) => Effect<readonly [S, B], E, R>
  ): Effect<[S, RA.ReadonlyArray.With<I, B>], E, R>
}
```
