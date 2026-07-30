Package: `effect`<br />
Module: `List`<br />

## List.every

Check if a predicate holds true for every `List` element.

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: List<A>) => self is List<B>; <A>(predicate: Predicate<A>): (self: List<A>) => boolean; <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): self is List<B>; <A>(self: List<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L452)

Since v2.0.0