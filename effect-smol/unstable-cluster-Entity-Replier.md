Package: `effect`<br />
Module: `Entity`<br />

## Entity.Replier

Reply API passed to queue-based entity handlers.

**When to use**

Use when you use it to complete an entity request by succeeding, failing, failing with a
cause, or supplying an explicit `Exit`.

**Signature**

```ts
export interface Replier<Rpcs extends Rpc.Any> {
  readonly succeed: <R extends Rpcs>(
    request: Envelope.Request<R>,
    value: Replier.Success<R>
  ) => Effect.Effect<void>

  readonly fail: <R extends Rpcs>(
    request: Envelope.Request<R>,
    error: Rpc.Error<R>
  ) => Effect.Effect<void>

  readonly failCause: <R extends Rpcs>(
    request: Envelope.Request<R>,
    cause: Cause.Cause<Rpc.Error<R>>
  ) => Effect.Effect<void>

  readonly complete: <R extends Rpcs>(
    request: Envelope.Request<R>,
    exit: Exit.Exit<Replier.Success<R>, Rpc.Error<R>>
  ) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L515)

Since v4.0.0