# subscribe

Subscribes to receive messages from the hub. The resulting subscription can
be evaluated multiple times within the scope to take a message from the hub
each time.

To import and use `subscribe` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.subscribe
```

**Signature**

```ts
export declare const subscribe: <A>(self: Hub<A>) => Effect.Effect<Scope.Scope, never, Queue.Dequeue<A>>
```
