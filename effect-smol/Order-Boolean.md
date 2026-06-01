Package: `effect`<br />
Module: `Order`<br />

## Order.Boolean

Order instance for booleans where `false` is considered less than `true`.

**When to use**

Use when you need boolean ordering where `false` comes before `true`.

**Details**

`false` is less than `true`, and equal values return `0`.

**Example** (Boolean Ordering)

```ts
import { Order } from "effect"

console.log(Order.Boolean(false, true)) // -1
console.log(Order.Boolean(true, false)) // 1
console.log(Order.Boolean(true, true)) // 0
```

**See**

- `mapInput` to compare objects by a boolean property

**Signature**

```ts
declare const Boolean: Order<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L277)

Since v4.0.0