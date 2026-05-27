Package: `effect`<br />
Module: `Sink`<br />

## Sink.flatMap

Runs this sink until it yields a result, then uses that result to create
another sink from the provided function which will continue to run until it
yields a result.

**When to use**

Use to compose sinks when the next sink depends on the result produced by the
previous sink.

**Details**

Leftovers from the first sink are fed to the sink returned by `f` before more
upstream input is pulled.

**See**

- `map` for transforming the result without switching sinks
- `mapEffect` for effectfully transforming the result without switching sinks

**Signature**

```ts
declare const flatMap: { <A, A1, L, In1 extends L, L1, E1, R1>(f: (a: A) => Sink<A1, In1, L1, E1, R1>): <In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A1, In & In1, L1 | L, E1 | E, R1 | R>; <A, In, L, E, R, A1, In1 extends L, L1, E1, R1>(self: Sink<A, In, L, E, R>, f: (a: A) => Sink<A1, In1, L1, E1, R1>): Sink<A1, In & In1, L | L1, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1197)

Since v2.0.0