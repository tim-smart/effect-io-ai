Package: `@effect/cluster`<br />
Module: `Message`<br />

## Message.failureSchema

Extracts the failure schema from a Message. This schema will be used to encode remote failures of the Message processor.

**Signature**

```ts
declare const failureSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Error<A>, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L121)

Since v1.0.0