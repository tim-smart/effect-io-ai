Package: `effect`<br />
Module: `Array`<br />

## Array.min

Returns the minimum element of a non-empty array according to the given
`Order`.

**Example** (Finding the minimum)

```ts
import { Array, Order } from "effect"

console.log(Array.min([3, 1, 2], Order.Number)) // 1
```

**See**

- `max` — find the maximum
- `sort` — sort the entire array

**Signature**

```ts
declare const min: { <A>(O: Order.Order<A>): (self: NonEmptyReadonlyArray<A>) => A; <A>(self: NonEmptyReadonlyArray<A>, O: Order.Order<A>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3709)

Since v2.0.0