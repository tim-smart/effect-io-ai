## flatMap

Runs this sink until it yields a result, then uses that result to create
another sink from the provided function which will continue to run until it
yields a result.

This function essentially runs sinks in sequence.

**Signature**

```ts
declare const flatMap: { <A, A1, In, In1 extends In, L1, E1, R1>(f: (a: A) => Sink<A1, In1, L1, E1, R1>): <L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A1, In & In1, L1 | L, E1 | E, R1 | R>; <A, In, L, E, R, A1, In1 extends In, L1, E1, R1>(self: Sink<A, In, L, E, R>, f: (a: A) => Sink<A1, In1, L1, E1, R1>): Sink<A1, In & In1, L | L1, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L956)

Since v2.0.0