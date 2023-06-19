# publishAll

Publishes all of the specified messages to the hub, returning whether they
were published to the hub.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const publishAll: {
  <A>(elements: Iterable<A>): (self: Hub<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Hub<A>, elements: Iterable<A>): Effect.Effect<never, never, boolean>
}
```
