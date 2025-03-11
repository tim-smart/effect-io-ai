## collectSTM

Simultaneously filters and maps the value produced by this effect.

**Signature**

```ts
declare const collectSTM: { <A, A2, E2, R2>(pf: (a: A) => Option.Option<STM<A2, E2, R2>>): <E, R>(self: STM<A, E, R>) => STM<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<STM<A2, E2, R2>>): STM<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L413)

Since v2.0.0