## makeBy

Return a `NonEmptyArray` of length `n` with element `i` initialized with `f(i)`.

**Note**. `n` is normalized to an integer >= 1.

**Example**

```ts
import { makeBy } from "effect/Array"

const result = makeBy(5, n => n * 2)
console.log(result) // [0, 2, 4, 6, 8]
```

**Signature**

```ts
declare const makeBy: { <A>(f: (i: number) => A): (n: number) => NonEmptyArray<A>; <A>(n: number, f: (i: number) => A): NonEmptyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L99)

Since v2.0.0