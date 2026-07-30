Package: `effect`<br />
Module: `STM`<br />

## STM.provideService

Provides the effect with the single service it requires. If the transactional
effect requires more than one service use `provideEnvironment` instead.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, resource: NoInfer<S>): <A, E, R>(self: STM<A, E, R>) => STM<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: STM<A, E, R>, tag: Context.Tag<I, S>, resource: NoInfer<S>): STM<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1474)

Since v2.0.0