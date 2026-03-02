Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.head

Get the first element of a `Iterable`, or `None` if the `Iterable` is empty.

**Example**

```ts
import { Iterable } from "effect"
import * as Option from "effect/Option"

const numbers = [1, 2, 3]
console.log(Iterable.head(numbers)) // Option.some(1)

const empty = Iterable.empty<number>()
console.log(Iterable.head(empty)) // Option.none()

// Safe way to get first element
const firstEven = Iterable.head(
  Iterable.filter([1, 3, 4, 5], (x) => x % 2 === 0)
)
console.log(firstEven) // Option.some(4)

// Use with Option methods
const doubled = Option.map(Iterable.head([5, 10, 15]), (x) => x * 2)
console.log(doubled) // Option.some(10)
```

**Signature**

```ts
declare const head: <A>(self: Iterable<A>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L449)

Since v2.0.0