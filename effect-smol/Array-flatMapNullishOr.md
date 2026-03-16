Package: `effect`<br />
Module: `Array`<br />

## Array.flatMapNullishOr

Maps each element with a nullable-returning function, keeping only non-null /
non-undefined results.

**Example** (FlatMapping with nullable)

```ts
import { Array } from "effect"

console.log(Array.flatMapNullishOr([1, 2, 3], (n) => (n % 2 === 0 ? null : n)))
// [1, 3]
```

**Signature**

```ts
declare const flatMapNullishOr: { <A, B>(f: (a: A) => B): (self: ReadonlyArray<A>) => Array<NonNullable<B>>; <A, B>(self: ReadonlyArray<A>, f: (a: A) => B): Array<NonNullable<B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3566)

Since v2.0.0