Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example**

```ts
import { Iterable } from "effect"
import * as Option from "effect/Option"

const numbers = [1, 3, 4, 6, 8]
const firstEven = Iterable.findFirst(numbers, (x) => x % 2 === 0)
console.log(firstEven) // Option.some(4)

const firstGreaterThan10 = Iterable.findFirst(numbers, (x) => x > 10)
console.log(firstGreaterThan10) // Option.none()

// With index
const letters = ["a", "b", "c", "d"]
const atEvenIndex = Iterable.findFirst(letters, (_, i) => i % 2 === 0)
console.log(atEvenIndex) // Option.some("a")

// Type refinement
const mixed: Array<string | number> = [1, "hello", 2, "world"]
const firstString = Iterable.findFirst(
  mixed,
  (x): x is string => typeof x === "string"
)
console.log(firstString) // Option.some("hello")

// Transform during search
const findSquareRoot = Iterable.findFirst([1, 4, 9, 16], (x) => {
  const sqrt = Math.sqrt(x)
  return Number.isInteger(sqrt) ? Option.some(sqrt) : Option.none()
})
console.log(findSquareRoot) // Option.some(1)
```

**Signature**

```ts
declare const findFirst: { <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L684)

Since v2.0.0