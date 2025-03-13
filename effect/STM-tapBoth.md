Package: `effect`<br />
Module: `STM`<br />

## STM.tapBoth

"Peeks" at both sides of an transactional effect.

**Signature**

```ts
declare const tapBoth: { <XE extends E, A2, E2, R2, XA extends A, A3, E3, R3, A, E>(options: { readonly onFailure: (error: XE) => STM<A2, E2, R2>; readonly onSuccess: (value: XA) => STM<A3, E3, R3>; }): <R>(self: STM<A, E, R>) => STM<A, E | E2 | E3, R2 | R3 | R>; <A, E, R, XE extends E, A2, E2, R2, XA extends A, A3, E3, R3>(self: STM<A, E, R>, options: { readonly onFailure: (error: XE) => STM<A2, E2, R2>; readonly onSuccess: (value: XA) => STM<A3, E3, R3>; }): STM<A, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1786)

Since v2.0.0