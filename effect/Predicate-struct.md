Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.struct

```ts
{ ab: Refinement<A, B>; cd: Refinement<C, D>, ... } -> Refinement<{ ab: A; cd: C; ... }, { ab: B; cd: D; ... }>
{ a: Predicate<A, B>; b: Predicate<B>, ... } -> Predicate<{ a: A; b: B; ... }>
{ ab: Refinement<A, B>; c: Predicate<C>, ... } -> Refinement<{ ab: A; c: C; ... }, { ab: B; c: С; ... }>
```

**Signature**

```ts
declare const struct: <R extends Record<string, Predicate.Any>>(fields: R) => [Extract<R[keyof R], Refinement.Any>] extends [never] ? Predicate<{ readonly [K in keyof R]: Predicate.In<R[K]>; }> : Refinement<{ readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.In<R[K]> : Predicate.In<R[K]>; }, { readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.Out<R[K]> : Predicate.In<R[K]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L795)

Since v2.0.0