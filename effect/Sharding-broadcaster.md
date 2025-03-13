Package: `@effect/cluster`<br />
Module: `Sharding`<br />

## Sharding.broadcaster

Get an object that allows broadcasting messages to a given topic type.
You can provide a custom send timeout to override the one globally defined.

**Signature**

```ts
declare const broadcaster: <Msg extends Message.Message.Any>(topicType: RecipentType.TopicType<Msg>) => Effect.Effect<Broadcaster<Msg>, never, Sharding>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L180)

Since v1.0.0