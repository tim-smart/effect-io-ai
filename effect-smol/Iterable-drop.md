Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.drop

Drop a max number of elements from the start of an `Iterable`

**Note**. `n` is normalized to a non negative integer.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3, 4, 5]
const withoutFirstTwo = Iterable.drop(numbers, 2)
console.log(Array.from(withoutFirstTwo)) // [3, 4, 5]

// Dropping more than available returns empty
const withoutFirstTen = Iterable.drop(numbers, 10)
console.log(Array.from(withoutFirstTen)) // []

// Dropping 0 or negative returns all elements
const all = Iterable.drop(numbers, 0)
console.log(Array.from(all)) // [1, 2, 3, 4, 5]

// Combine with take for slicing
const slice = Iterable.take(Iterable.drop(numbers, 1), 3)
console.log(Array.from(slice)) // [2, 3, 4]
```

**Signature**

```ts
declare const drop: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L622)

Since v2.0.0