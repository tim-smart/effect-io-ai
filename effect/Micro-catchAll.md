## catchAll

Catch the error of the given `Micro` effect, allowing you to recover from it.

It only catches expected errors.

**Signature**

```ts
declare const catchAll: { <E, B, E2, R2>(f: (e: NoInfer<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A | B, E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (e: NoInfer<E>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2643)

Since v3.4.6