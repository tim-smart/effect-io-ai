Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.filterMapWhile

Transforms all elements of the `Iterable` for as long as the specified function returns some value

**Signature**

```ts
declare const filterMapWhile: { <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L811)

Since v2.0.0