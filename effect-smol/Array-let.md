Package: `effect`<br />
Module: `Array`<br />

## Array.let

Adds a computed plain value to the do-notation scope without introducing a new array dimension.

- Unlike `bind`, the callback returns a single value (not an array), so no cartesian product occurs.
- Useful for derived or intermediate values that depend on previously bound variables.

**Example** (Adding a computed value)

```ts
import { Array, pipe } from "effect"

const result = pipe(
  Array.Do,
  Array.bind("x", () => [1, 2, 3]),
  Array.let("doubled", ({ x }) => x * 2)
)
console.log(result)
// [{ x: 1, doubled: 2 }, { x: 2, doubled: 4 }, { x: 3, doubled: 6 }]
```

**See**

- `Do` — start a do-notation pipeline
- `bind` — introduce an array variable (produces cartesian product)

**Signature**

```ts
declare const let: { <N extends string, B, A extends object>(tag: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): (self: ReadonlyArray<A>) => Array<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; <N extends string, A extends object, B>(self: ReadonlyArray<A>, tag: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): Array<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4229)

Since v3.2.0