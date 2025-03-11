## findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Signature**

```ts
declare const findFirst: { <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L388)

Since v2.0.0