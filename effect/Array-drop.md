## drop

Drop a max number of elements from the start of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

**Example**

```ts
import { Array } from "effect"

const result = Array.drop([1, 2, 3, 4, 5], 2)
console.log(result) // [3, 4, 5]
```

**Signature**

```ts
declare const drop: { (n: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L926)

Since v2.0.0