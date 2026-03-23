Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapEnd

Transforms this sink's result.

**Signature**

```ts
declare const mapEnd: { <A, L, A2, L2 = never>(f: (a: End<A, L>) => End<A2, L2>): <In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L2, E, R>; <A, In, L, E, R, A2, L2 = never>(self: Sink<A, In, L, E, R>, f: (a: End<A, L>) => End<A2, L2>): Sink<A2, In, L2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L851)

Since v4.0.0