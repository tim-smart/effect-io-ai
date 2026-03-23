Package: `effect`<br />
Module: `Sink`<br />

## Sink.as

Set the sink's result to a constant value.

**Signature**

```ts
declare const as: { <A2>(a2: A2): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E, R>; <A, In, L, E, R, A2>(self: Sink<A, In, L, E, R>, a2: A2): Sink<A2, In, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L750)

Since v2.0.0