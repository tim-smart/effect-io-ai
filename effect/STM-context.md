## context

Retrieves the environment inside an stm.

**Signature**

```ts
declare const context: <R>() => STM<Context.Context<R>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L450)

Since v2.0.0