Package: `effect`<br />
Module: `Array`<br />

## Array.scan

Left-to-right fold that keeps every intermediate accumulator value.

- The output length is `input.length + 1` (starts with the initial value).
- Always returns a `NonEmptyArray` because the initial value is included.
- Use `reduce` if you only need the final accumulated value.

**Example** (Running totals)

```ts
import { Array } from "effect"

const result = Array.scan([1, 2, 3, 4], 0, (acc, value) => acc + value)
console.log(result) // [0, 1, 3, 6, 10]
```

**See**

- `scanRight` — right-to-left scan
- `reduce` — fold without intermediate values

**Signature**

```ts
declare const scan: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L690)

Since v2.0.0