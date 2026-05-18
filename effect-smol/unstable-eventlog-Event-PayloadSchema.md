Package: `effect`<br />
Module: `Event`<br />

## Event.PayloadSchema

Extracts the payload schema from an event definition.

**Signature**

```ts
type PayloadSchema<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Payload
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L186)

Since v4.0.0