Package: `effect`<br />
Module: `Sink`<br />

## Sink.ignoreLeftover

Drains the remaining elements from the stream after the sink finishes

**Signature**

```ts
declare const ignoreLeftover: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1055)

Since v2.0.0