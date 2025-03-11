## contextWithEffect

Accesses the context of the sink in the context of an effect.

**Signature**

```ts
declare const contextWithEffect: <R0, A, E, R>(f: (context: Context.Context<R0>) => Effect.Effect<A, E, R>) => Sink<A, unknown, never, E, R0 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L544)

Since v2.0.0