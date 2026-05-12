Package: `effect`<br />
Module: `Effect`<br />

## Effect.filter

Filters elements of an iterable using a predicate, refinement, or effectful
predicate.

**Example**

```ts
import { Effect } from "effect"

// Sync predicate
const evens = Effect.filter([1, 2, 3, 4], (n) => n % 2 === 0)

// Effectful predicate
const checked = Effect.filter([1, 2, 3], (n) => Effect.succeed(n > 1))

// Use Effect.filterMapEffect for effectful Filter.Filter callbacks
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Predicate.Refinement<NoInfer<A>, B>): (elements: Iterable<A>) => Effect<Array<B>>; <A>(predicate: Predicate.Predicate<NoInfer<A>>): (elements: Iterable<A>) => Effect<Array<A>>; <A, E, R>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): (iterable: Iterable<A>) => Effect<Array<A>, E, R>; <A, B extends A>(elements: Iterable<A>, refinement: Predicate.Refinement<A, B>): Effect<Array<B>>; <A>(elements: Iterable<A>, predicate: Predicate.Predicate<A>): Effect<Array<A>>; <A, E, R>(iterable: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): Effect<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4764)

Since v2.0.0