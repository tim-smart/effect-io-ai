Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapEffect

Effectfully filters and maps elements of an iterable with a `FilterEffect`.

**Signature**

```ts
declare const filterMapEffect: { <A, B, X, E, R>(filter: Filter.FilterEffect<NoInfer<A>, B, X, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): (elements: Iterable<A>) => Effect<Array<B>, E, R>; <A, B, X, E, R>(elements: Iterable<A>, filter: Filter.FilterEffect<NoInfer<A>, B, X, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): Effect<Array<B>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4867)

Since v4.0.0