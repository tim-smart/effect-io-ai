Package: `effect`<br />
Module: `Array`<br />

## Array.drop

Removes the first `n` elements, creating a new array.

**When to use**

Use to keep the suffix of an iterable after skipping a fixed number of
leading elements.

**Details**

- `n` is clamped to `[0, length]`.
- Returns a copy of the full array when `n <= 0`.

**Example** (Dropping from the start)

```ts
import { Array } from "effect"

console.log(Array.drop([1, 2, 3, 4, 5], 2)) // [3, 4, 5]
```

**See**

- `dropRight` for removing a fixed number of elements from the end
- `dropWhile` for removing a prefix based on a predicate instead of a fixed count
- `take` for keeping a fixed number of elements from the start

**Signature**

```ts
declare const drop: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1569)

Since v2.0.0