## SerializedEnvelope

A SerializedEnvelope is the message that goes over the wire between pods.
Inside the Envelope, you have the encoded messages, plus some informations on where it should be routed to.

**Signature**

```ts
declare class SerializedEnvelope
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/SerializedEnvelope.ts#L35)

Since v1.0.0