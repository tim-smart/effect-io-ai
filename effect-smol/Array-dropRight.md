Package: `effect`<br />
Module: `Array`<br />

## Array.dropRight

Removes the last `n` elements, creating a new array.

- `n` is clamped to `[0, length]`.

**Example** (Dropping from the end)

```ts
import { Array } from "effect"

console.log(Array.dropRight([1, 2, 3, 4, 5], 2)) // [1, 2, 3]
```

**See**

- `drop` — remove from the start
- `takeRight` — keep from the end

**Signature**

```ts
declare const dropRight: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1380)

Since v2.0.0