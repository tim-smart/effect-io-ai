## provideSomeContext

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

**Signature**

```ts
declare const provideSomeContext: { <R>(context: Context.Context<R>): <R1, E, A>(self: STM<A, E, R1>) => STM<A, E, Exclude<R1, R>>; <R, R1, E, A>(self: STM<A, E, R1>, context: Context.Context<R>): STM<A, E, Exclude<R1, R>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1462)

Since v2.0.0