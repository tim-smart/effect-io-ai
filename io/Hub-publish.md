# publish

Publishes a message to the hub, returning whether the message was published
to the hub.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const publish: {
  <A>(value: A): (self: Hub<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Hub<A>, value: A): Effect.Effect<never, never, boolean>
}
```
