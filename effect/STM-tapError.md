## tapError

"Peeks" at the error of the transactional effect.

**Signature**

```ts
declare const tapError: { <E, X, E2, R2>(f: (error: NoInfer<E>) => STM<X, E2, R2>): <A, R>(self: STM<A, E, R>) => STM<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: STM<A, E, R>, f: (error: E) => STM<X, E2, R2>): STM<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1802)

Since v2.0.0