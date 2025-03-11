## takeRight

Keep only a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

**Example**

```ts
import { Array } from "effect"

const result = Array.takeRight([1, 2, 3, 4, 5], 3)
console.log(result) // [3, 4, 5]
```

**Signature**

```ts
declare const takeRight: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L825)

Since v2.0.0