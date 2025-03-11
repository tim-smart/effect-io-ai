## forEach

Applies the function `f` to each element of the `Iterable<A>` and returns
a transactional effect that produces a new `Chunk<A2>`.

**Signature**

```ts
declare const forEach: { <A, A2, E, R>(f: (a: A) => STM<A2, E, R>, options?: { readonly discard?: false | undefined; } | undefined): (elements: Iterable<A>) => STM<Array<A2>, E, R>; <A, A2, E, R>(f: (a: A) => STM<A2, E, R>, options: { readonly discard: true; }): (elements: Iterable<A>) => STM<void, E, R>; <A, A2, E, R>(elements: Iterable<A>, f: (a: A) => STM<A2, E, R>, options?: { readonly discard?: false | undefined; } | undefined): STM<Array<A2>, E, R>; <A, A2, E, R>(elements: Iterable<A>, f: (a: A) => STM<A2, E, R>, options: { readonly discard: true; }): STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L770)

Since v2.0.0