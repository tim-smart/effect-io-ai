Package: `effect`<br />
Module: `Sink`<br />

## Sink.make.Constructor

Overloaded function type returned by `Sink.make`.

**Details**

The first pipeline function receives the sink input as a `Stream<In>`. The
final pipeline step must return an `Effect`, whose success value becomes
the sink result.

**Signature**

```ts
export interface Constructor<In> {
    <E, R, B = never>(ab: (_: Stream<In>) => Effect.Effect<B, E, R>): Sink<B, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => Effect.Effect<C, E, R>
    ): Sink<C, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => Effect.Effect<D, E, R>
    ): Sink<D, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => Effect.Effect<F, E, R>
    ): Sink<F, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never, G = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => Effect.Effect<G, E, R>
    ): Sink<G, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never, G = never, H = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => G,
      gh: (_: G) => Effect.Effect<H, E, R>
    ): Sink<H, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never, G = never, H = never, I = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => G,
      gh: (_: G) => H,
      hi: (_: H) => Effect.Effect<I, E, R>
    ): Sink<I, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never, G = never, H = never, I = never, J = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => G,
      gh: (_: G) => H,
      hi: (_: H) => I,
      ij: (_: I) => Effect.Effect<J, E, R>
    ): Sink<J, In, never, E, Exclude<R, Scope.Scope>>
    <E, R, B = never, C = never, D = never, F = never, G = never, H = never, I = never, J = never, K = never>(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => G,
      gh: (_: G) => H,
      hi: (_: H) => I,
      ij: (_: I) => J,
      jk: (_: J) => Effect.Effect<K, E, R>
    ): Sink<K, In, never, E, Exclude<R, Scope.Scope>>
    <
      E,
      R,
      B = never,
      C = never,
      D = never,
      F = never,
      G = never,
      H = never,
      I = never,
      J = never,
      K = never,
      L = never
    >(
      ab: (_: Stream<In>) => B,
      bc: (_: B) => C,
      cd: (_: C) => D,
      df: (_: D) => F,
      fg: (_: F) => G,
      gh: (_: G) => H,
      hi: (_: H) => I,
      ij: (_: I) => J,
      jk: (_: J) => K,
      kl: (_: K) => Effect.Effect<L, E, R>
    ): Sink<L, In, never, E, Exclude<R, Scope.Scope>>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L332)

Since v4.0.0