## rejectSTM

Continue with the returned computation if the specified partial function
matches, translating the successful match into a failure, otherwise continue
with our held value.

**Signature**

```ts
declare const rejectSTM: { <A, E2, R2>(pf: (a: A) => Option.Option<STM<E2, E2, R2>>): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<STM<E2, E2, R2>>): STM<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1583)

Since v2.0.0