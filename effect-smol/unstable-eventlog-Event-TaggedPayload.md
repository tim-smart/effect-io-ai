Package: `effect`<br />
Module: `Event`<br />

## Event.TaggedPayload

Tagged payload value for an event definition.

**Details**

The result contains `_tag` set to the event tag and `payload` set to the
decoded payload value.

**Signature**

```ts
type TaggedPayload<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? {
    readonly _tag: _Tag
    readonly payload: Schema.Schema.Type<_Payload>
  }
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L233)

Since v4.0.0