Package: `effect`<br />
Module: `Array`<br />

## Array.filterMap

Keeps transformed values for elements where a `Filter` succeeds.

- The filter receives `(element, index)`.
- Failures are discarded.

**Example** (Filter and transform)

```ts
import { Array, Result } from "effect"

console.log(Array.filterMap([1, 2, 3, 4], (n) => n % 2 === 0 ? Result.succeed(n * 10) : Result.failVoid))
// [20, 40]
```

**See**

- `filter` — keep original elements matching a predicate

**Signature**

```ts
declare const filterMap: { <A, B, X>(f: (input: NoInfer<A>, i: number) => Result.Result<B, X>): (self: Iterable<A>) => Array<B>; <A, B, X>(self: Iterable<A>, f: (input: A, i: number) => Result.Result<B, X>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3256)

Since v4.0.0