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
declare const filterOrElse: { <A, C, E2, R2, B extends A = A>(predicate: Predicate<NoInfer<A>> | Refinement<NoInfer<A>, B>, orElse: (a: EqualsWith<A, B, NoInfer<A>, Exclude<NoInfer<A>, B>>) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>; <A, E, R, C, E2, R2, B extends A = A>(self: Effect<A, E, R>, predicate: Predicate<A> | Refinement<A, B>, orElse: (a: EqualsWith<A, B, A, Exclude<A, B>>) => Effect<C, E2, R2>): Effect<B | C, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8372)

Since v2.0.0