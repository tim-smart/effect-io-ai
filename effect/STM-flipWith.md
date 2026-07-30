Package: `effect`<br />
Module: `STM`<br />

## STM.flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

**Signature**

```ts
declare const flipWith: { <E, A, R, E2, A2, R2>(f: (stm: STM<E, A, R>) => STM<E2, A2, R2>): (self: STM<A, E, R>) => STM<A | A2, E | E2, R | R2>; <A, E, R, E2, A2, R2>(self: STM<A, E, R>, f: (stm: STM<E, A, R>) => STM<E2, A2, R2>): STM<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L725)

Since v2.0.0