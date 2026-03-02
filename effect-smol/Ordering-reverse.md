Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.reverse

Inverts the ordering of the input Ordering.
This is useful for creating descending sort orders from ascending ones.

**Example**

```ts
import { Ordering } from "effect"

// Basic reversal
console.log(Ordering.reverse(1)) // -1 (greater becomes less)
console.log(Ordering.reverse(-1)) // 1 (less becomes greater)
console.log(Ordering.reverse(0)) // 0 (equal stays equal)

// Creating descending sort from ascending comparison
const compareNumbers = (a: number, b: number): Ordering.Ordering =>
  a < b ? -1 : a > b ? 1 : 0

const compareDescending = (a: number, b: number): Ordering.Ordering =>
  Ordering.reverse(compareNumbers(a, b))

const numbers = [3, 1, 4, 1, 5]
numbers.sort(compareNumbers) // [1, 1, 3, 4, 5] (ascending)
numbers.sort(compareDescending) // [5, 4, 3, 1, 1] (descending)

// Useful for toggling sort direction
const createSorter = (ascending: boolean) => (a: number, b: number) => {
  const ordering = compareNumbers(a, b)
  return ascending ? ordering : Ordering.reverse(ordering)
}
```

**Signature**

```ts
declare const reverse: (o: Ordering) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ordering.ts#L99)

Since v2.0.0