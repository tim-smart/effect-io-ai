## flatMap

Applies a function to each element in an Iterable and returns a new Iterable containing the concatenated mapped elements.

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: NoInfer<A>, i: number) => Iterable<B>): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, f: (a: NoInfer<A>, i: number) => Iterable<B>): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L736)

Since v2.0.0