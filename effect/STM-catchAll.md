Package: `effect`<br />
Module: `STM`<br />

## STM.catchAll

Recovers from all errors.

**Signature**

```ts
declare const catchAll: { <E, B, E1, R1>(f: (e: E) => STM<B, E1, R1>): <A, R>(self: STM<A, E, R>) => STM<B | A, E1, R1 | R>; <A, E, R, B, E1, R1>(self: STM<A, E, R>, f: (e: E) => STM<B, E1, R1>): STM<A | B, E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L309)

Since v2.0.0