Package: `effect`<br />
Module: `Array`<br />

## Array.partition

Splits an iterable using a `Filter` into failures and successes.

- Returns `[excluded, satisfying]`.
- The filter receives `(element, index)`.

**Example** (Partitioning with a filter)

```ts
import { Array, Result } from "effect"

console.log(Array.partition([1, -2, 3], (n, i) =>
  n > 0 ? Result.succeed(n + i) : Result.fail(`negative:${n}`)
))
// [["negative:-2"], [1, 5]]
```

**See**

- `filter` — keep only matching elements
- `partitionMap` — partition using a Result-returning function

**Signature**

```ts
declare const partition: { <A, Pass, Fail>(f: (input: NoInfer<A>, i: number) => Result.Result<Pass, Fail>): (self: Iterable<A>) => [excluded: Array<Fail>, satisfying: Array<Pass>]; <A, Pass, Fail>(self: Iterable<A>, f: (input: A, i: number) => Result.Result<Pass, Fail>): [excluded: Array<Fail>, satisfying: Array<Pass>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3332)

Since v2.0.0