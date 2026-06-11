Package: `effect`<br />
Module: `Sink`<br />

## Sink.catch

Handles typed errors from this sink with an effectful fallback value.

**When to use**

Use to recover from a typed sink failure by producing the replacement
result with an `Effect`.

**See**

- `catchCause` for recovering from the full failure cause
- `orElse` for recovering by switching to another sink

**Signature**

```ts
declare const catch: { <E, A2, E2, R2>(f: (error: Types.NoInfer<E>) => Effect.Effect<A2, E2, R2>): <A, In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A2 | A, In, L, E, R2 | R>; <A, In, L, E, R, A2, E2, R2>(self: Sink<A, In, L, E, R>, f: (error: E) => Effect.Effect<A2, E2, R2>): Sink<A | A2, In, L, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L2121)

Since v4.0.0