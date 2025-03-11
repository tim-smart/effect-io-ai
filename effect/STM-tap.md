## tap

"Peeks" at the success of transactional effect.

**Signature**

```ts
declare const tap: { <A, X, E2, R2>(f: (a: A) => STM<X, E2, R2>): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: STM<A, E, R>, f: (a: A) => STM<X, E2, R2>): STM<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1775)

Since v2.0.0