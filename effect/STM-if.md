Package: `effect`<br />
Module: `STM`<br />

## STM.if

Runs `onTrue` if the result of `b` is `true` and `onFalse` otherwise.

**Signature**

```ts
declare const if: { <A, E1, R1, A2, E2, R2>(options: { readonly onTrue: STM<A, E1, R1>; readonly onFalse: STM<A2, E2, R2>; }): <E = never, R = never>(self: boolean | STM<boolean, E, R>) => STM<A | A2, E1 | E2 | E, R1 | R2 | R>; <A, E1, R1, A2, E2, R2, E = never, R = never>(self: boolean, options: { readonly onTrue: STM<A, E1, R1>; readonly onFalse: STM<A2, E2, R2>; }): STM<A | A2, E1 | E2 | E, R1 | R2 | R>; <E, R, A, E1, R1, A2, E2, R2>(self: STM<boolean, E, R>, options: { readonly onTrue: STM<A, E1, R1>; readonly onFalse: STM<A2, E2, R2>; }): STM<A | A2, E | E1 | E2, R | R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1122)

Since v2.0.0