Package: `effect`<br />
Module: `Array`<br />

## Array.unfold

Builds an array by repeatedly applying a function to a seed value. The
function returns `[element, nextSeed]` to continue, or `undefined` to stop.

**Example** (Generating a sequence)

```ts
import { Array } from "effect"

console.log(Array.unfold(1, (n) => n <= 5 ? [n, n + 1] : undefined))
// [1, 2, 3, 4, 5]
```

**See**

- `makeBy` — generate from index
- `range` — generate a numeric range

**Signature**

```ts
declare const unfold: <B, A>(b: B, f: (b: B) => readonly [A, B] | undefined) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3755)

Since v2.0.0