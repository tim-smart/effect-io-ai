Package: `effect`<br />
Module: `Option`<br />

## Option.makeOrder

Creates an `Order` for `Option<A>` from an `Order` for `A`.

**When to use**

- Sorting collections of `Option` values

**Details**

- `None` is considered less than any `Some`
- Two `Some` values are compared using the provided `Order`
- Two `None` values are equal (returns `0`)

**Example** (Ordering Options)

```ts
import { Number as N, Option } from "effect"

const ord = Option.makeOrder(N.Order)

console.log(ord(Option.none(), Option.some(1)))
// Output: -1

console.log(ord(Option.some(1), Option.none()))
// Output: 1

console.log(ord(Option.some(1), Option.some(2)))
// Output: -1
```

**Signature**

```ts
declare const makeOrder: <A>(O: Order<A>) => Order<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2123)

Since v4.0.0