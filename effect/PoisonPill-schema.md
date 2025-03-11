## schema

This is the schema for a PoisonPill that is used to encode the value over the wire.
This is useful if you want a behavior that can be shut down from an external message.

**Signature**

```ts
declare const schema: Schema.Schema<PoisonPill, PoisonPill.Encoded, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PoisonPill.ts#L86)

Since v1.0.0