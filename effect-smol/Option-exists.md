Package: `effect`<br />
Module: `Option`<br />

## Option.exists

Tests if the value in a `Some` satisfies a predicate or refinement.

**When to use**

- Checking a condition on an optional value without unwrapping

**Behavior**

- `None` → `false`
- `Some` where `predicate(value)` is `true` → `true`
- `Some` where `predicate(value)` is `false` → `false`
- With a refinement, narrows the `Option` type on `true`

**Example** (Testing a condition)

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

**See**

- `filter` to keep or discard based on a predicate
- `contains` to test for a specific value

**Signature**

```ts
declare const exists: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Option<A>) => self is Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Option<A>) => boolean; <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): self is Option<B>; <A>(self: Option<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2338)

Since v2.0.0