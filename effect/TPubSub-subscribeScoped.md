# subscribeScoped

Subscribes to receive messages from the `TPubSub`. The resulting subscription can
be evaluated multiple times within the scope to take a message from the `TPubSub`
each time.

To import and use `subscribeScoped` from the "TPubSub" module:

```ts
import * as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.subscribeScoped
```

**Signature**

```ts
export declare const subscribeScoped: <A>(self: TPubSub<A>) => Effect.Effect<TQueue.TDequeue<A>, never, Scope.Scope>
```
