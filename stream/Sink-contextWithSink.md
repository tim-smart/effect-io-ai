# contextWithSink

Accesses the context of the sink in the context of a sink.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contextWithSink: <R0, R, E, In, L, Z>(
  f: (context: Context.Context<R0>) => Sink<R, E, In, L, Z>
) => Sink<R0 | R, E, In, L, Z>
```
