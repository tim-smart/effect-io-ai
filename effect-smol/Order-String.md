Package: `effect`<br />
Module: `Order`<br />

## Order.String

An `Order` instance for strings that compares them lexicographically using JavaScript's `<` operator.

**When to use**

- When comparing strings alphabetically
- When sorting string collections
- As a base for creating orders on types containing strings

**Details**

- Pure function: does not mutate inputs
- Uses lexicographic (dictionary) ordering
- Empty string is less than any non-empty string
- Comparison is case-sensitive

**Example** (String Ordering)

```ts
import { Order } from "effect"

console.log(Order.String("apple", "banana")) // -1
console.log(Order.String("banana", "apple")) // 1
console.log(Order.String("apple", "apple")) // 0
```

**See**

- `mapInput` - Use this order to compare objects by a string property
- `Struct` - Combine with other orders for struct comparison

**Signature**

```ts
declare const String: Order<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L192)

Since v4.0.0