## some

Check if a predicate holds true for some `List` element.

**Signature**

```ts
declare const some: { <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => self is Cons<A>; <A>(self: List<A>, predicate: Predicate<A>): self is Cons<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L472)

Since v2.0.0