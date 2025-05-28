Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterOrDieMessage

Filters an effect, dying with a custom message if the predicate fails.

**Details**

This function works like `filterOrDie` but allows you to specify a
custom error message to describe the reason for the failure. The message is
included in the defect when the predicate evaluates to `false`.

**Signature**

```ts
declare const filterOrDieMessage: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>, message: string): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A>(predicate: Predicate<NoInfer<A>>, message: string): <E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, B extends A>(self: Effect<A, E, R>, refinement: Refinement<A, B>, message: string): Effect<B, E, R>; <A, E, R>(self: Effect<A, E, R>, predicate: Predicate<A>, message: string): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8374)

Since v2.0.0