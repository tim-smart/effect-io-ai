Package: `effect`<br />
Module: `Array`<br />

## Array.mapAccum

Maps over an array while threading an accumulator through each step, returning both the final state and the mapped array.

- Combines `map` and `reduce` in a single pass.
- The callback receives the current state, element, and index, and returns `[nextState, mappedValue]`.
- Returns `[finalState, mappedArray]`.
- Dual: can be used in both data-first and data-last style.

**Example** (Running sum alongside mapped values)

```ts
import { Array } from "effect"

const result = Array.mapAccum([1, 2, 3], 0, (acc, n) => [acc + n, acc + n])
console.log(result) // [6, [1, 3, 6]]
```

**See**

- `scan` — when you only need the accumulated results (not the final state)
- `reduce` — when you only need the final accumulated value

**Signature**

```ts
declare const mapAccum: { <S, A, B, I extends Iterable<A> = Iterable<A>>(s: S, f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]): (self: I) => [state: S, mappedArray: ReadonlyArray.With<I, B>]; <S, A, B, I extends Iterable<A> = Iterable<A>>(self: I, s: S, f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]): [state: S, mappedArray: ReadonlyArray.With<I, B>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3993)

Since v2.0.0