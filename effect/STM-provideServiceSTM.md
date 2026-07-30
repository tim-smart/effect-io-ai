Package: `effect`<br />
Module: `STM`<br />

## STM.provideServiceSTM

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

**Signature**

```ts
declare const provideServiceSTM: { <I, S, E1, R1>(tag: Context.Tag<I, S>, stm: STM<NoInfer<S>, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A, E1 | E, R1 | Exclude<R, I>>; <A, E, R, I, S, E1, R1>(self: STM<A, E, R>, tag: Context.Tag<I, S>, stm: STM<NoInfer<S>, E1, R1>): STM<A, E1 | E, R1 | Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1486)

Since v2.0.0