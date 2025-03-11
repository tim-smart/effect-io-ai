## liftPredicate

Lifts a predicate into an array.

**Example**

```ts
import { Array } from "effect"

const isEven = (n: number) => n % 2 === 0
const to = Array.liftPredicate(isEven)
console.log(to(1)) // []
console.log(to(2)) // [2]
```

**Signature**

```ts
declare const liftPredicate: { <A, B extends A>(refinement: Refinement<A, B>): (a: A) => Array<B>; <A>(predicate: Predicate<A>): <B extends A>(b: B) => Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2727)

Since v2.0.0