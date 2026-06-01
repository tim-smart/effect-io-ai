Package: `effect`<br />
Module: `Order`<br />

## Order.min

Returns the minimum of two values according to the given order. If they are equal, returns the first argument.

**When to use**

Use when you need to select the smaller of two values according to an
`Order`.

**Details**

Returns the value that compares as less than or equal to the other value. If
values are equal, the first argument is returned.

**Example** (Minimum Value)

```ts
import { Order } from "effect"

const minNumber = Order.min(Order.Number)

console.log(minNumber(1, 2)) // 1
console.log(minNumber(2, 1)) // 1
console.log(minNumber(1, 1)) // 1
```

**See**

- `max` for the maximum of two values
- `clamp` to clamp a value between min and max

**Signature**

```ts
declare const min: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L868)

Since v2.0.0