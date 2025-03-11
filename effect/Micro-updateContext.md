## updateContext

Update the Context with the given mapping function.

**Signature**

```ts
declare const updateContext: { <R2, R>(f: (context: Context.Context<R2>) => Context.Context<NoInfer<R>>): <A, E>(self: Micro<A, E, R>) => Micro<A, E, R2>; <A, E, R, R2>(self: Micro<A, E, R>, f: (context: Context.Context<R2>) => Context.Context<NoInfer<R>>): Micro<A, E, R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1864)

Since v3.11.0