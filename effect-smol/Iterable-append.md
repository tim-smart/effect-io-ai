Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.append

Append an element to the end of an `Iterable`, creating a new `Iterable`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3]
const withFour = Iterable.append(numbers, 4)
console.log(Array.from(withFour)) // [1, 2, 3, 4]

// Chain multiple appends
const result = Iterable.append(
  Iterable.append([1, 2], 3),
  4
)
console.log(Array.from(result)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const append: { <B>(last: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, last: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L257)

Since v2.0.0