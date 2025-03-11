## provideContext

Provides the transaction its required environment, which eliminates its
dependency on `R`.

**Signature**

```ts
declare const provideContext: { <R>(env: Context.Context<R>): <A, E>(self: STM<A, E, R>) => STM<A, E>; <A, E, R>(self: STM<A, E, R>, env: Context.Context<R>): STM<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1450)

Since v2.0.0