# publish

Publishes a message to the `PubSub`, returning whether the message was published
to the `PubSub`.

To import and use `publish` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.publish
```

**Signature**

```ts
export declare const publish: {
  <A>(value: A): (self: PubSub<A>) => Effect.Effect<never, never, boolean>
  <A>(self: PubSub<A>, value: A): Effect.Effect<never, never, boolean>
}
```
