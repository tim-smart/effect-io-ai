Package: `effect`<br />
Module: `Effect`<br />

## Effect.liftPredicate

Transforms a `Predicate` function into an `Effect` returning the input value if the predicate returns `true`
or failing with specified error if the predicate fails

**Example**

```ts
import { Effect } from "effect"

const isPositive = (n: number): boolean => n > 0

// succeeds with `1`
Effect.liftPredicate(1, isPositive, n => `${n} is not positive`)

// fails with `"0 is not positive"`
Effect.liftPredicate(0, isPositive, n => `${n} is not positive`)
```

**Signature**

```ts
declare const liftPredicate: { <A, B extends A, E>(refinement: Refinement<NoInfer<A>, B>, orFailWith: (a: NoInfer<A>) => E): (a: A) => Effect<B, E>; <A, E>(predicate: Predicate<NoInfer<A>>, orFailWith: (a: NoInfer<A>) => E): (a: A) => Effect<A, E>; <A, E, B extends A>(self: A, refinement: Refinement<A, B>, orFailWith: (a: A) => E): Effect<B, E>; <A, E>(self: A, predicate: Predicate<NoInfer<A>>, orFailWith: (a: NoInfer<A>) => E): Effect<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4972)

Since v3.4.0