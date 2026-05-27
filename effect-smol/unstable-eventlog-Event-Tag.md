Package: `effect`<br />
Module: `Event`<br />

## Event.Tag

Extracts the tag string from an event definition.

**Signature**

```ts
type Tag<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Tag :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L156)

Since v4.0.0