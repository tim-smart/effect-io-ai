Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.Ordering

Represents the result of comparing two values.

- `-1` indicates the first value is less than the second
- `0` indicates the values are equal
- `1` indicates the first value is greater than the second

**Example**

```ts
import type { Ordering } from "effect"

// Custom comparison function
const compareNumbers = (a: number, b: number): Ordering.Ordering => {
  if (a < b) return -1
  if (a > b) return 1
  return 0
}

console.log(compareNumbers(5, 10)) // -1 (5 < 10)
console.log(compareNumbers(10, 5)) // 1 (10 > 5)
console.log(compareNumbers(5, 5)) // 0 (5 == 5)

// Using with string comparison
const compareStrings = (a: string, b: string): Ordering.Ordering => {
  return a.localeCompare(b) as Ordering.Ordering
}
```

**Signature**

```ts
type Ordering = -1 | 0 | 1
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ordering.ts#L63)

Since v2.0.0