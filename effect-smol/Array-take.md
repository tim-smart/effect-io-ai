Package: `effect`<br />
Module: `Array`<br />

## Array.take

Keeps the first `n` elements, creating a new array.

- `n` is clamped to `[0, length]`.
- Returns an empty array when `n <= 0`.

**Example** (Taking from the start)

```ts
import { Array } from "effect"

console.log(Array.take([1, 2, 3, 4, 5], 3)) // [1, 2, 3]
```

**See**

- `takeRight` — keep from the end
- `takeWhile` — keep while predicate holds
- `drop` — remove from the start

**Signature**

```ts
declare const take: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1177)

Since v2.0.0