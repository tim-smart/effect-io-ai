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
declare const liftPredicate: { <T extends A, E, B extends T = T, A = T>(predicate: Refinement<T, B> | Predicate<T>, orFailWith: (a: EqualsWith<T, B, A, Exclude<A, B>>) => E): (a: A) => Effect<EqualsWith<T, B, A, B>, E>; <A, E, B extends A = A>(self: A, predicate: Refinement<A, B> | Predicate<A>, orFailWith: (a: EqualsWith<A, B, A, Exclude<A, B>>) => E): Effect<B, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4978)

Since v3.4.0