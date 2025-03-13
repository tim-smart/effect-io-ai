Package: `effect`<br />
Module: `STM`<br />

## STM.orElseSucceed

Tries this effect first, and if it fails or retries, succeeds with the
specified value.

**Signature**

```ts
declare const orElseSucceed: { <A2>(value: LazyArg<A2>): <A, E, R>(self: STM<A, E, R>) => STM<A2 | A, never, R>; <A, E, R, A2>(self: STM<A, E, R>, value: LazyArg<A2>): STM<A | A2, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1409)

Since v2.0.0