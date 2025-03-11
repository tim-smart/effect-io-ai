## replicate

Return a `NonEmptyArray` containing a value repeated the specified number of times.

**Note**. `n` is normalized to an integer >= 1.

**Example**

```ts
import { Array } from "effect"

const result = Array.replicate("a", 3)
console.log(result) // ["a", "a", "a"]
```

**Signature**

```ts
declare const replicate: { (n: number): <A>(a: A) => NonEmptyArray<A>; <A>(a: A, n: number): NonEmptyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L146)

Since v2.0.0