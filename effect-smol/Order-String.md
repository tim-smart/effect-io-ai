Package: `effect`<br />
Module: `Order`<br />

## Order.String

Order instance for strings that compares them lexicographically using JavaScript's `<` operator.

**When to use**

Use when you need lexicographic string ordering.

**Details**

Uses lexicographic dictionary ordering. The empty string is less than any
non-empty string, and comparisons are case-sensitive.

**Example** (String Ordering)

```ts
import { Order } from "effect"

console.log(Order.String("apple", "banana")) // -1
console.log(Order.String("banana", "apple")) // 1
console.log(Order.String("apple", "apple")) // 0
```

**See**

- `mapInput` to compare objects by a string property
- `Struct` to combine with other orders for struct comparison

**Signature**

```ts
declare const String: Order<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L144)

Since v4.0.0