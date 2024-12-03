# publishAll

Publishes all of the specified messages to the `PubSub`, returning whether they
were published to the `PubSub`.

To import and use `publishAll` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.publishAll
```

**Signature**

```ts
export declare const publishAll: {
  <A>(elements: Iterable<A>): (self: PubSub<A>) => Effect.Effect<boolean>
  <A>(self: PubSub<A>, elements: Iterable<A>): Effect.Effect<boolean>
}
```
