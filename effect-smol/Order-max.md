Package: `effect`<br />
Module: `Order`<br />

## Order.max

Returns the maximum of two values according to the given order. If they are equal, returns the first argument.

**When to use**

Use when you need to select the larger of two values according to an
`Order`.

**Details**

Returns the value that compares as greater than or equal to the other value.
If values are equal, the first argument is returned.

**Example** (Maximum Value)

```ts
import { Order } from "effect"

const maxNumber = Order.max(Order.Number)

console.log(maxNumber(1, 2)) // 2
console.log(maxNumber(2, 1)) // 2
console.log(maxNumber(1, 1)) // 1
```

**See**

- `min` for the minimum of two values
- `clamp` to clamp a value between min and max

**Signature**

```ts
declare const max: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L903)

Since v2.0.0