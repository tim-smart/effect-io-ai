Package: `effect`<br />
Module: `Array`<br />

## Array.takeRight

Keeps the last `n` elements, creating a new array.

- `n` is clamped to `[0, length]`.
- Returns an empty array when `n <= 0`.

**Example** (Taking from the end)

```ts
import { Array } from "effect"

console.log(Array.takeRight([1, 2, 3, 4, 5], 3)) // [3, 4, 5]
```

**See**

- `take` — keep from the start
- `dropRight` — remove from the end

**Signature**

```ts
declare const takeRight: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1204)

Since v2.0.0