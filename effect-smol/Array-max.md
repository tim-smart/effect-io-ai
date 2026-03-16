Package: `effect`<br />
Module: `Array`<br />

## Array.max

Returns the maximum element of a non-empty array according to the given
`Order`.

**Example** (Finding the maximum)

```ts
import { Array, Order } from "effect"

console.log(Array.max([3, 1, 2], Order.Number)) // 3
```

**See**

- `min` — find the minimum
- `sort` — sort the entire array

**Signature**

```ts
declare const max: { <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A; <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3734)

Since v2.0.0