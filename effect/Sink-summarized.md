Package: `effect`<br />
Module: `Sink`<br />

## Sink.summarized

Summarize a sink by running an effect when the sink starts and again when
it completes.

**Signature**

```ts
declare const summarized: { <A2, E2, R2, A3>(summary: Effect.Effect<A2, E2, R2>, f: (start: A2, end: A2) => A3): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<[A, A3], In, L, E2 | E, R2 | R>; <A, In, L, E, R, A2, E2, R2, A3>(self: Sink<A, In, L, E, R>, summary: Effect.Effect<A2, E2, R2>, f: (start: A2, end: A2) => A3): Sink<[A, A3], In, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1300)

Since v2.0.0