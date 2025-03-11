## orElse

Tries this effect first, and if it fails or retries, tries the other
effect.

**Signature**

```ts
declare const orElse: { <A2, E2, R2>(that: LazyArg<STM<A2, E2, R2>>): <A, E, R>(self: STM<A, E, R>) => STM<A2 | A, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: STM<A, E, R>, that: LazyArg<STM<A2, E2, R2>>): STM<A | A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1354)

Since v2.0.0