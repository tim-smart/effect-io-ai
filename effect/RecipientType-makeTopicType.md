Package: `@effect/cluster`<br />
Module: `RecipientType`<br />

## RecipientType.makeTopicType

Given a name and a schema for the protocol, constructs an TopicType.

**Signature**

```ts
declare const makeTopicType: <Msg extends Message.Message.Any, I>(name: string, schema: Schema.Schema<Msg, I>) => TopicType<Msg>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientType.ts#L125)

Since v1.0.0