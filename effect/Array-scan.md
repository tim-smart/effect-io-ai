Package: `effect`<br />
Module: `Array`<br />

## Array.scan

Folds left-to-right while keeping every intermediate accumulator value.

**When to use**

Use to compute a running accumulator where each intermediate value is needed.

**Details**

The output length is `input.length + 1` because it starts with the initial
value. The result is always a `NonEmptyArray`. Use `reduce` if you only need
the final accumulated value.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L716)

Since v2.0.0