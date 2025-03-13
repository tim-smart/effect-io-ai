Package: `effect`<br />
Module: `List`<br />

## List.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Signature**

```ts
declare const findFirst: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: List<A>) => Option.Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => Option.Option<A>; <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): Option.Option<B>; <A>(self: List<A>, predicate: Predicate<A>): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L626)

Since v2.0.0