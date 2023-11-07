# subscribe

Subscribes to receive messages from the `PubSub`. The resulting subscription can
be evaluated multiple times within the scope to take a message from the `PubSub`
each time.

To import and use `subscribe` from the "PubSub" module:

```ts
import * as PubSub from 'effect/PubSub'

// Can be accessed like this
PubSub.subscribe
```

**Signature**

```ts
export declare const subscribe: <A>(self: PubSub<A>) => Effect.Effect<Scope.Scope, never, Queue.Dequeue<A>>
```
