# publishAll

Publishes all of the specified messages to the hub, returning whether they
were published to the hub.

To import and use `publishAll` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.publishAll
```

**Signature**

```ts
export declare const publishAll: {
  <A>(elements: Iterable<A>): (self: Hub<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Hub<A>, elements: Iterable<A>): Effect.Effect<never, never, boolean>
}
```
