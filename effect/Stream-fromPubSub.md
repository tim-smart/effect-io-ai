# fromPubSub

Creates a stream from a subscription to a `PubSub`.

To import and use `fromPubSub` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromPubSub
```

**Signature**

```ts
export declare const fromPubSub: {
  <A>(
    pubsub: PubSub.PubSub<A>,
    options: {
      readonly scoped: true
      readonly maxChunkSize?: number | undefined
      readonly shutdown?: boolean | undefined
    }
  ): Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
  <A>(
    pubsub: PubSub.PubSub<A>,
    options?: {
      readonly scoped?: false | undefined
      readonly maxChunkSize?: number | undefined
      readonly shutdown?: boolean | undefined
    }
  ): Stream<never, never, A>
}
```
