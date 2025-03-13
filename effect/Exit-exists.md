Package: `effect`<br />
Module: `Exit`<br />

## Exit.exists

Executes the predicate on the value of the specified exit if it is a
`Success`, otherwise returns `false`.

**Signature**

```ts
declare const exists: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E>(self: Exit<A, E>) => self is Exit<B>; <A>(predicate: Predicate<NoInfer<A>>): <E>(self: Exit<A, E>) => boolean; <A, E, B extends A>(self: Exit<A, E>, refinement: Refinement<A, B>): self is Exit<B>; <A, E>(self: Exit<A, E>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L169)

Since v2.0.0