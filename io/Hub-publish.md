# publish

Publishes a message to the hub, returning whether the message was published
to the hub.

To import and use `publish` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.publish
```

**Signature**

```ts
export declare const publish: {
  <A>(value: A): (self: Hub<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Hub<A>, value: A): Effect.Effect<never, never, boolean>
}
```
