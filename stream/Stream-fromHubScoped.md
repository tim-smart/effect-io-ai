# fromHubScoped

Creates a stream from a subscription to a `Hub` in the context of a scoped
effect. The scoped effect describes subscribing to receive messages from
the hub while the stream describes taking messages from the hub.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromHubScoped: <A>(
  hub: Hub.Hub<A>,
  maxChunkSize?: number
) => Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
```
