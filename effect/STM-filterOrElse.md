Package: `effect`<br />
Module: `STM`<br />

## STM.filterOrElse

Supplies `orElse` if the predicate fails.

**Signature**

```ts
declare const filterOrElse: { <A, B extends A, C, E2, R2>(refinement: Refinement<NoInfer<A>, B>, orElse: (a: NoInfer<A>) => STM<C, E2, R2>): <E, R>(self: STM<A, E, R>) => STM<B | C, E2 | E, R2 | R>; <A, B, E2, R2>(predicate: Predicate<NoInfer<A>>, orElse: (a: NoInfer<A>) => STM<B, E2, R2>): <E, R>(self: STM<A, E, R>) => STM<A | B, E2 | E, R2 | R>; <A, E, R, B extends A, C, E2, R2>(self: STM<A, E, R>, refinement: Refinement<A, B>, orElse: (a: A) => STM<C, E2, R2>): STM<B | C, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: STM<A, E, R>, predicate: Predicate<A>, orElse: (a: A) => STM<B, E2, R2>): STM<A | B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L644)

Since v2.0.0