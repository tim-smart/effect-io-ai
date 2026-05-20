Package: `effect`<br />
Module: `Sink`<br />

## Sink.ignoreLeftover

Drops leftovers produced by a sink.

**Details**

The sink result is preserved, but any leftover elements are discarded
instead of being returned to downstream sink composition. This does not
continue pulling additional elements from the upstream stream.

**Signature**

```ts
declare const ignoreLeftover: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L694)

Since v2.0.0