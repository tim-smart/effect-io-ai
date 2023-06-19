# subscribe

Subscribes to receive messages from the hub. The resulting subscription can
be evaluated multiple times within the scope to take a message from the hub
each time.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const subscribe: <A>(self: Hub<A>) => Effect.Effect<Scope.Scope, never, Queue.Dequeue<A>>
```
