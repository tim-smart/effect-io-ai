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
declare const filterOrElse: { <A, C, E2, R2, B extends A>(refinement: Refinement<NoInfer<A>, B>, orElse: (a: EqualsWith<A, B, NoInfer<A>, Exclude<NoInfer<A>, B>>) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>; <A, C, E2, R2>(predicate: Predicate<NoInfer<A>>, orElse: (a: NoInfer<A>) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<A | C, E2 | E, R2 | R>; <A, E, R, C, E2, R2, B extends A>(self: Effect<A, E, R>, refinement: Refinement<A, B>, orElse: (a: EqualsWith<A, B, A, Exclude<A, B>>) => Effect<C, E2, R2>): Effect<B | C, E | E2, R | R2>; <A, E, R, C, E2, R2>(self: Effect<A, E, R>, predicate: Predicate<A>, orElse: (a: A) => Effect<C, E2, R2>): Effect<A | C, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8404)

Since v2.0.0