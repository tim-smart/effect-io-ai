Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterOrFail

Filters an effect, failing with a custom error if the predicate fails.

**Details**

This function applies a predicate to the result of an effect. If the
predicate evaluates to `false`, the effect fails with either a custom
error (if `orFailWith` is provided) or a `NoSuchElementError`.

**Example**

```ts
import { Effect } from "effect"

// An effect that produces a number
const program = Effect.succeed(5)

// Filter for even numbers, fail for odd numbers
const filtered = Effect.filterOrFail(
  program,
  (n) => n % 2 === 0,
  (n) => `Expected even number, got ${n}`
)

// Result: Effect.fail("Expected even number, got 5")
```

**Signature**

```ts
declare const filterOrFail: { <A, E2, B extends A>(refinement: Predicate.Refinement<NoInfer<A>, B>, orFailWith: (a: NoInfer<A>) => E2): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R>; <A, E2>(predicate: Predicate.Predicate<NoInfer<A>>, orFailWith: (a: NoInfer<A>) => E2): <E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R>; <A, B extends A>(refinement: Predicate.Refinement<NoInfer<A>, B>): <E, R>(self: Effect<A, E, R>) => Effect<B, Cause.NoSuchElementError | E, R>; <A>(predicate: Predicate.Predicate<NoInfer<A>>): <E, R>(self: Effect<A, E, R>) => Effect<A, Cause.NoSuchElementError | E, R>; <A, E, R, E2, B extends A>(self: Effect<A, E, R>, refinement: Predicate.Refinement<NoInfer<A>, B>, orFailWith: (a: NoInfer<A>) => E2): Effect<B, E2 | E, R>; <A, E, R, E2>(self: Effect<A, E, R>, predicate: Predicate.Predicate<NoInfer<A>>, orFailWith: (a: NoInfer<A>) => E2): Effect<A, E2 | E, R>; <A, E, R, B extends A>(self: Effect<A, E, R>, refinement: Predicate.Refinement<NoInfer<A>, B>): Effect<B, E | Cause.NoSuchElementError, R>; <A, E, R>(self: Effect<A, E, R>, predicate: Predicate.Predicate<NoInfer<A>>): Effect<A, E | Cause.NoSuchElementError, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4923)

Since v2.0.0