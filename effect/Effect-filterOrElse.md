Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterOrElse

Filters an effect, providing an alternative effect if the predicate fails.

**Details**

This function applies a predicate to the result of an effect. If the
predicate evaluates to `false`, it executes the `orElse` effect instead. The
`orElse` effect can produce an alternative value or perform additional
computations.

**Signature**

```ts
declare const filterOrElse: { <A, B extends A, C, E2, R2>(refinement: Refinement<NoInfer<A>, B>, orElse: (a: NoInfer<A>) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>; <A, B, E2, R2>(predicate: Predicate<NoInfer<A>>, orElse: (a: NoInfer<A>) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<A | B, E2 | E, R2 | R>; <A, E, R, B extends A, C, E2, R2>(self: Effect<A, E, R>, refinement: Refinement<A, B>, orElse: (a: A) => Effect<C, E2, R2>): Effect<B | C, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, predicate: Predicate<A>, orElse: (a: A) => Effect<B, E2, R2>): Effect<A | B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8367)

Since v2.0.0