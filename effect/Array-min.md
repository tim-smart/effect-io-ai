Package: `effect`<br />
Module: `Array`<br />

## Array.min

Finds the minimum element in an array based on a comparator.

**Example**

```ts
import { Array, Order } from "effect"

const result = Array.min([3, 1, 2], Order.number)
console.log(result) // 1
```

**Signature**

```ts
declare const min: { <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A; <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3063)

Since v2.0.0