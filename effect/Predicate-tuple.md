Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.tuple

Similar to `Promise.all` but operates on `Predicate`s.

```ts
[Refinement<A, B>, Refinement<C, D>, ...] -> Refinement<[A, C, ...], [B, D, ...]>
[Predicate<A>, Predicate<B>, ...] -> Predicate<[A, B, ...]>
[Refinement<A, B>, Predicate<C>, ...] -> Refinement<[A, C, ...], [B, C, ...]>
```

**Signature**

```ts
declare const tuple: <T extends ReadonlyArray<Predicate.Any>>(...elements: T) => [Extract<T[number], Refinement.Any>] extends [never] ? Predicate<{ readonly [I in keyof T]: Predicate.In<T[I]>; }> : Refinement<{ readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.In<T[I]> : Predicate.In<T[I]>; }, { readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.Out<T[I]> : Predicate.In<T[I]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L776)

Since v2.0.0