Package: `effect`<br />
Module: `STM`<br />

## STM.contextWith

Accesses the environment of the transaction to perform a transaction.

**Signature**

```ts
declare const contextWith: <R0, R>(f: (environment: Context.Context<R0>) => R) => STM<R, never, R0>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L458)

Since v2.0.0