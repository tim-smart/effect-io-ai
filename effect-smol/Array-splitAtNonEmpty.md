Package: `effect`<br />
Module: `Array`<br />

## Array.splitAtNonEmpty

Splits a non-empty array into two parts at the given index. The first part
is guaranteed to be non-empty (`n` is clamped to >= 1).

**Example** (Splitting a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.splitAtNonEmpty(["a", "b", "c", "d", "e"], 3))
// [["a", "b", "c"], ["d", "e"]]
```

**See**

- `splitAt` — for possibly-empty arrays

**Signature**

```ts
declare const splitAtNonEmpty: { (n: number): <A>(self: NonEmptyReadonlyArray<A>) => [beforeIndex: NonEmptyArray<A>, fromIndex: Array<A>]; <A>(self: NonEmptyReadonlyArray<A>, n: number): [beforeIndex: NonEmptyArray<A>, fromIndex: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2376)

Since v2.0.0