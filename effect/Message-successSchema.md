## successSchema

Extracts the success schema from a Message. This schema will be used to encode the remote success of the Message processor.

**Signature**

```ts
declare const successSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Success<A>, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L131)

Since v1.0.0