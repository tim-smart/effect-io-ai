## zip

Combine two `Micro` effects into a single effect that produces a tuple of
their results.

**Signature**

```ts
declare const zip: { <A2, E2, R2>(that: Micro<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; } | undefined): <A, E, R>(self: Micro<A, E, R>) => Micro<[A, A2], E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Micro<A, E, R>, that: Micro<A2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; }): Micro<[A, A2], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2110)

Since v3.4.0