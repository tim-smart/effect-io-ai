## RecipientType

A RecipientType is basically a pointer to a logical grouping of multiple enties having the same RecipientBehaviour.
This value is required to be able to message with an entity/topic since it holds the Schema for the messages over the wire.
Without the schema, you cannot ensure that the messages sent are what the receiver expects.
Ideally, you can share this definition between the caller and the receiver.

**Signature**

```ts
type RecipientType<Msg> = EntityType<Msg> | TopicType<Msg>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientType.ts#L94)

Since v1.0.0