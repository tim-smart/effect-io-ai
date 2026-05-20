Package: `effect`<br />
Module: `Event`<br />

## Event.PayloadSchemaWithTag

Extracts the payload schema for the event in a union with the specified tag.

**Signature**

```ts
type PayloadSchemaWithTag<A, Tag> = A extends Event<
  Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Payload
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L206)

Since v4.0.0