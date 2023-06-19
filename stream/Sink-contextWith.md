# contextWith

Accesses the context of the sink.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contextWith: <R, Z>(f: (context: Context.Context<R>) => Z) => Sink<R, never, unknown, never, Z>
```
