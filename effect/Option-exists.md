## exists

Checks if a value in an `Option` satisfies a given predicate or refinement.

**Details**

This function allows you to check if a value inside a `Some` meets a
specified condition. If the `Option` is `None`, the result is `false`. If the
`Option` is `Some`, the provided predicate or refinement is applied to the
value:

- If the condition is met, the result is `true`.
- If the condition is not met, the result is `false`.

**Example**

```ts
import { Option } from "effect"

const isEven = (n: number) => n % 2 === 0

console.log(Option.some(2).pipe(Option.exists(isEven)))
// Output: true

console.log(Option.some(1).pipe(Option.exists(isEven)))
// Output: false

console.log(Option.none().pipe(Option.exists(isEven)))
// Output: false
```

**Signature**

```ts
declare const exists: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Option<A>) => self is Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Option<A>) => boolean; <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): self is Option<B>; <A>(self: Option<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1929)

Since v2.0.0