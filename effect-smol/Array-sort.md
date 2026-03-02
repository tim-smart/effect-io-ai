Package: `effect`<br />
Module: `Array`<br />

## Array.sort

Sorts an array by the given `Order`, returning a new array.

- Does not mutate the input.
- Preserves `NonEmptyArray` in the return type.
- Use `sortWith` to sort by a derived key, or `sortBy` for
  multi-key sorting.

**Example** (Sorting numbers)

```ts
import { Array, Order } from "effect"

console.log(Array.sort([3, 1, 4, 1, 5], Order.Number)) // [1, 1, 3, 4, 5]
```

**See**

- `sortWith` — sort by a mapping function
- `sortBy` — sort by multiple orders

**Signature**

```ts
declare const sort: { <B>(O: Order.Order<B>): <A extends B, S extends Iterable<A>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A extends B, B>(self: NonEmptyReadonlyArray<A>, O: Order.Order<B>): NonEmptyArray<A>; <A extends B, B>(self: Iterable<A>, O: Order.Order<B>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1828)

Since v2.0.0