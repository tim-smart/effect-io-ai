Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.findLast

Find the last element for which a predicate holds.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 3, 4, 6, 8, 2]
const lastEven = Iterable.findLast(numbers, (x) => x % 2 === 0)
console.log(lastEven) // Option.some(2)

const lastGreaterThan10 = Iterable.findLast(numbers, (x) => x > 10)
console.log(lastGreaterThan10) // Option.none()

// With index
const letters = ["a", "b", "c", "d", "e"]
const lastAtEvenIndex = Iterable.findLast(letters, (_, i) => i % 2 === 0)
console.log(lastAtEvenIndex) // Option.some("e") (index 4)

// Type refinement
const mixed: Array<string | number> = [1, "hello", 2, "world", 3]
const lastString = Iterable.findLast(
  mixed,
  (x): x is string => typeof x === "string"
)
console.log(lastString) // Option.some("world")
```

**Signature**

```ts
declare const findLast: { <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L744)

Since v2.0.0