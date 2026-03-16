Package: `effect`<br />
Module: `Array`<br />

## Array.unfold

Builds an array by repeatedly applying a function to a seed value. The
function returns `Option.some([element, nextSeed])` to continue, or
`Option.none()` to stop.

**Example** (Generating a sequence)

```ts
import { Array, Option } from "effect"

console.log(Array.unfold(1, (n) => n <= 5 ? Option.some([n, n + 1]) : Option.none()))
// [1, 2, 3, 4, 5]
```

**See**

- `makeBy` — generate from index
- `range` — generate a numeric range

**Signature**

```ts
declare const unfold: <B, A>(b: B, f: (b: B) => Option.Option<readonly [A, B]>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3759)

Since v2.0.0