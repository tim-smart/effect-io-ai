# fromPubSub

Create a sink which publishes each element to the specified `PubSub`.

To import and use `fromPubSub` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fromPubSub
```

**Signature**

```ts
export declare const fromPubSub: <In>(
  pubsub: PubSub.PubSub<In>,
  options?: { readonly shutdown?: boolean | undefined }
) => Sink<void, In, never, never, never>
```
