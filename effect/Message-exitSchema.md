Package: `@effect/cluster`<br />
Module: `Message`<br />

## Message.exitSchema

Extracts the exit schema from a Message. This schema will be used to encode the remote exit of the Message processor.

**Signature**

```ts
declare const exitSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Exit<A>, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L111)

Since v1.0.0