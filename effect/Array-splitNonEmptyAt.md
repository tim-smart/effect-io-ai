## splitNonEmptyAt

Splits a `NonEmptyReadonlyArray` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

**Example**

```ts
import { Array } from "effect"

const result = Array.splitNonEmptyAt(["a", "b", "c", "d", "e"], 3)
console.log(result) // [["a", "b", "c"], ["d", "e"]]
```

**Signature**

```ts
declare const splitNonEmptyAt: { (n: number): <A>(self: NonEmptyReadonlyArray<A>) => [beforeIndex: NonEmptyArray<A>, fromIndex: Array<A>]; <A>(self: NonEmptyReadonlyArray<A>, n: number): [beforeIndex: NonEmptyArray<A>, fromIndex: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1836)

Since v2.0.0