Package: `effect`<br />
Module: `List`<br />

## List.flatMap

Applies a function to each element in a list and returns a new list containing the concatenated mapped elements.

**Signature**

```ts
declare const flatMap: { <S extends List<any>, T extends List<any>>(f: (a: List.Infer<S>, i: number) => T): (self: S) => List.AndNonEmpty<S, T, List.Infer<T>>; <A, B>(self: Cons<A>, f: (a: A, i: number) => Cons<B>): Cons<B>; <A, B>(self: List<A>, f: (a: A, i: number) => List<B>): List<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L648)

Since v2.0.0