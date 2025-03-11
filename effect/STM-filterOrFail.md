## filterOrFail

Fails with the specified error if the predicate fails.

**Signature**

```ts
declare const filterOrFail: { <A, B extends A, E2>(refinement: Refinement<NoInfer<A>, B>, orFailWith: (a: NoInfer<A>) => E2): <E, R>(self: STM<A, E, R>) => STM<B, E2 | E, R>; <A, E2>(predicate: Predicate<NoInfer<A>>, orFailWith: (a: NoInfer<A>) => E2): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R>; <A, E, R, B extends A, E2>(self: STM<A, E, R>, refinement: Refinement<A, B>, orFailWith: (a: A) => E2): STM<B, E | E2, R>; <A, E, R, E2>(self: STM<A, E, R>, predicate: Predicate<A>, orFailWith: (a: A) => E2): STM<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L671)

Since v2.0.0