Package: `effect`<br />
Module: `Sink`<br />

## Sink.orElse

Runs a fallback sink if this sink fails with a typed error.

**Details**

The fallback is built from the error and continues consuming from the same
upstream stream. If the upstream stream had already ended, the fallback sees
the upstream end instead.

**Signature**

```ts
declare const orElse: { <E, A2, In2, L2, E2, R2>(f: (error: Types.NoInfer<E>) => Sink<A2, In2, L2, E2, R2>): <A, In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A2 | A, In & In2, L2 | L, E2 | E, R2 | R>; <A, In, L, E, R, A2, In2, L2, E2, R2>(self: Sink<A, In, L, E, R>, f: (error: E) => Sink<A2, In2, L2, E2, R2>): Sink<A | A2, In & In2, L | L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L2042)

Since v2.0.0