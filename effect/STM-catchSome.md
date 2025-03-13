Package: `effect`<br />
Module: `STM`<br />

## STM.catchSome

Recovers from some or all of the error cases.

**Signature**

```ts
declare const catchSome: { <E, A2, E2, R2>(pf: (error: E) => Option.Option<STM<A2, E2, R2>>): <A, R>(self: STM<A, E, R>) => STM<A2 | A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: STM<A, E, R>, pf: (error: E) => Option.Option<STM<A2, E2, R2>>): STM<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L320)

Since v2.0.0