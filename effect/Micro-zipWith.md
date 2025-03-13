Package: `effect`<br />
Module: `Micro`<br />

## Micro.zipWith

The `Micro.zipWith` function combines two `Micro` effects and allows you to
apply a function to the results of the combined effects, transforming them
into a single value.

**Signature**

```ts
declare const zipWith: { <A2, E2, R2, A, B>(that: Micro<A2, E2, R2>, f: (a: A, b: A2) => B, options?: { readonly concurrent?: boolean | undefined; }): <E, R>(self: Micro<A, E, R>) => Micro<B, E2 | E, R2 | R>; <A, E, R, A2, E2, R2, B>(self: Micro<A, E, R>, that: Micro<A2, E2, R2>, f: (a: A, b: A2) => B, options?: { readonly concurrent?: boolean | undefined; }): Micro<B, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2137)

Since v3.4.3