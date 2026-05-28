Package: `effect`<br />
Module: `Sink`<br />

## Sink.catchCause

Handles failures from this sink by inspecting the full `Cause`.

**When to use**

Use to recover from a sink failure based on the full `Cause` instead of only
the typed error value.

**Details**

When this sink fails, the handler effect is run and its success value
becomes the sink result. If the handler fails, the returned sink fails with
that error.

**See**

- `catch` for recovering from typed errors only
- `orElse` for recovering by switching to another sink

**Signature**

```ts
declare const catchCause: { <E, A2, E2, R2>(f: (error: Cause.Cause<Types.NoInfer<E>>) => Effect.Effect<A2, E2, R2>): <A, In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A2 | A, In, L, E, R2 | R>; <A, In, L, E, R, A2, E2, R2>(self: Sink<A, In, L, E, R>, f: (error: Cause.Cause<E>) => Effect.Effect<A2, E2, R2>): Sink<A | A2, In, L, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L2095)

Since v4.0.0