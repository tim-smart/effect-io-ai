Package: `effect`<br />
Module: `Order`<br />

## Order.Boolean

An `Order` instance for booleans where `false` is considered less than `true`.

When to use this:
- When comparing booleans for sorting or searching
- As a base for creating orders on types containing booleans
- When implementing boolean-based comparisons

Behavior:
- Pure function: does not mutate inputs
- `false` is less than `true`
- Equal values return `0`

**Example** (Boolean Ordering)

```ts
import { Order } from "effect"

console.log(Order.Boolean(false, true)) // -1
console.log(Order.Boolean(true, false)) // 1
console.log(Order.Boolean(true, true)) // 0
```

See also:
- `mapInput` - Use this order to compare objects by a boolean property

**Signature**

```ts
declare const Boolean: Order<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L263)

Since v4.0.0