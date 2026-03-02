Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.headUnsafe

Get the first element of a `Iterable`, or throw an error if the `Iterable` is empty.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3]
console.log(Iterable.headUnsafe(numbers)) // 1

const letters = "hello"
console.log(Iterable.headUnsafe(letters)) // "h"

// This will throw an error!
try {
  const empty = Iterable.empty<number>()
  Iterable.headUnsafe(empty) // throws Error: "headUnsafe: empty iterable"
} catch (error) {
  console.log((error as Error).message) // "headUnsafe: empty iterable"
}

// Use only when you're certain the iterable is non-empty
const nonEmpty = Iterable.range(1, 10)
console.log(Iterable.headUnsafe(nonEmpty)) // 1
```

**Signature**

```ts
declare const headUnsafe: <A>(self: Iterable<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L483)

Since v3.3.0