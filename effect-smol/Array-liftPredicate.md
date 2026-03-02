Package: `effect`<br />
Module: `Array`<br />

## Array.liftPredicate

Lifts a predicate into an array: returns `[value]` if the predicate holds,
`[]` otherwise.

**Example** (Conditional wrapping)

```ts
import { Array } from "effect"

const isEven = (n: number) => n % 2 === 0
const to = Array.liftPredicate(isEven)
console.log(to(1)) // []
console.log(to(2)) // [2]
```

**See**

- `liftOption` — lift an Option-returning function

**Signature**

```ts
declare const liftPredicate: { <A, B extends A>(refinement: Predicate.Refinement<A, B>): (a: A) => Array<B>; <A>(predicate: Predicate.Predicate<A>): <B extends A>(b: B) => Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3465)

Since v2.0.0