Package: `effect`<br />
Module: `Sink`<br />

## Sink.collectAllFrom

Repeatedly runs the sink and accumulates its results into a `Chunk`.

**Signature**

```ts
declare const collectAllFrom: <A, In, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<Chunk.Chunk<A>, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L145)

Since v2.0.0