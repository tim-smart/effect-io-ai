## MessageState

Once a Message is sent to an entity to be processed,
the state of that message over that entity is either Acknoledged (not yet processed) or Processed.

**Signature**

```ts
type MessageState<A> = MessageStateAcknowledged | MessageStateProcessed<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/MessageState.ts#L53)

Since v1.0.0