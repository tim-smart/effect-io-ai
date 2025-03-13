Package: `effect`<br />
Module: `Sink`<br />

## Sink.race

Runs both sinks in parallel on the input, , returning the result or the
error from the one that finishes first.

**Signature**

```ts
declare const race: { <R1, E1, In1, L1, A1>(that: Sink<A1, In1, L1, E1, R1>): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A1 | A, In & In1, L1 | L, E1 | E, R1 | R>; <A, In, L, E, R, A1, In1, L1, E1, R1>(self: Sink<A, In, L, E, R>, that: Sink<A1, In1, L1, E1, R1>): Sink<A | A1, In & In1, L | L1, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1175)

Since v2.0.0