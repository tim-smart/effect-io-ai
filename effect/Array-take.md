Package: `effect`<br />
Module: `Array`<br />

## Array.take

Keep only a max number of elements from the start of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

**Example**

```ts
import { Array } from "effect"

const result = Array.take([1, 2, 3, 4, 5], 3)
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const take: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L797)

Since v2.0.0