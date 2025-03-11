## provideContext

Provides the sink with its required context, which eliminates its
dependency on `R`.

**Signature**

```ts
declare const provideContext: { <R>(context: Context.Context<R>): <A, In, L, E>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, never>; <A, In, L, E, R>(self: Sink<A, In, L, E, R>, context: Context.Context<R>): Sink<A, In, L, E, never>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1163)

Since v2.0.0