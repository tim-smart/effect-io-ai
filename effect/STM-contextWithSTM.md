## contextWithSTM

Accesses the environment of the transaction to perform a transaction.

**Signature**

```ts
declare const contextWithSTM: <R0, A, E, R>(f: (environment: Context.Context<R0>) => STM<A, E, R>) => STM<A, E, R0 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L466)

Since v2.0.0