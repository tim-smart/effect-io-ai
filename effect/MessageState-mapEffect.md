# mapEffect

Effectfully transform the <A> type of the MessageState<A>.

To import and use `mapEffect` from the "MessageState" module:

```ts
import * as MessageState from "@effect/cluster/MessageState"
// Can be accessed like this
MessageState.mapEffect
```

**Signature**

```ts
export declare const mapEffect: <A, B, R, E>(
  value: MessageState<A>,
  fn: (value: A) => Effect.Effect<B, E, R>
) => Effect.Effect<MessageState<B>, E, R>
```
