## mapInputContext

Transforms the environment being provided to this effect with the specified
function.

**Signature**

```ts
declare const mapInputContext: { <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <A, E>(self: STM<A, E, R>) => STM<A, E, R0>; <A, E, R0, R>(self: STM<A, E, R>, f: (context: Context.Context<R0>) => Context.Context<R>): STM<A, E, R0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L477)

Since v2.0.0