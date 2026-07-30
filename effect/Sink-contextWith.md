Package: `effect`<br />
Module: `Sink`<br />

## Sink.contextWith

Accesses the context of the sink.

**Signature**

```ts
declare const contextWith: <R, Z>(f: (context: Context.Context<R>) => Z) => Sink<Z, unknown, never, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L535)

Since v2.0.0