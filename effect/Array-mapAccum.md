Package: `effect`<br />
Module: `Array`<br />

## Array.mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

**Example**

```ts
import { Array } from "effect"

const result = Array.mapAccum([1, 2, 3], 0, (acc, n) => [acc + n, acc + n])
console.log(result) // [6, [1, 3, 6]]
```

**Signature**

```ts
declare const mapAccum: { <S, A, B, I extends Iterable<A> = Iterable<A>>(s: S, f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]): (self: I) => [state: S, mappedArray: ReadonlyArray.With<I, B>]; <S, A, B, I extends Iterable<A> = Iterable<A>>(self: I, s: S, f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]): [state: S, mappedArray: ReadonlyArray.With<I, B>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3289)

Since v2.0.0