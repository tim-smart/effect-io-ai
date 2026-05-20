Package: `effect`<br />
Module: `Event`<br />

## Event.SuccessSchema

Extracts the success schema from an event definition.

**Signature**

```ts
type SuccessSchema<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Success
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L250)

Since v4.0.0