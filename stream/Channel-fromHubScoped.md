# fromHubScoped

Construct a `Channel` from a `Hub` within a scoped effect.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromHubScoped: <Err, Done, Elem>(
  hub: Hub.Hub<Either.Either<Exit.Exit<Err, Done>, Elem>>
) => Effect.Effect<Scope.Scope, never, Channel<never, unknown, unknown, unknown, Err, Elem, Done>>
```
