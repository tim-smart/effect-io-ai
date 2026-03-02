Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.prepend

Prepend an element to the front of an `Iterable`, creating a new `Iterable`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [2, 3, 4]
const withOne = Iterable.prepend(numbers, 1)
console.log(Array.from(withOne)) // [1, 2, 3, 4]

// Works with any iterable
const letters = "abc"
const withZ = Iterable.prepend(letters, "z")
console.log(Array.from(withZ)) // ["z", "a", "b", "c"]
```

**Signature**

```ts
declare const prepend: { <B>(head: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, head: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L204)

Since v2.0.0