Package: `effect`<br />
Module: `Array`<br />

## Array.max

Finds the maximum element in an array based on a comparator.

**Example**

```ts
import { Array, Order } from "effect"

const result = Array.max([3, 1, 2], Order.number)
console.log(result) // 3
```

**Signature**

```ts
declare const max: { <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A; <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3030)

Since v2.0.0