Package: `effect`<br />
Module: `STM`<br />

## STM.orElseFail

Tries this effect first, and if it fails or retries, fails with the
specified error.

**Signature**

```ts
declare const orElseFail: { <E2>(error: LazyArg<E2>): <A, E, R>(self: STM<A, E, R>) => STM<A, E2, R>; <A, E, R, E2>(self: STM<A, E, R>, error: LazyArg<E2>): STM<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1379)

Since v2.0.0