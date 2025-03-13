Package: `effect`<br />
Module: `Sink`<br />

## Sink.contextWithSink

Accesses the context of the sink in the context of a sink.

**Signature**

```ts
declare const contextWithSink: <R0, A, In, L, E, R>(f: (context: Context.Context<R0>) => Sink<A, In, L, E, R>) => Sink<A, In, L, E, R0 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L554)

Since v2.0.0