Package: `effect`<br />
Module: `Event`<br />

## Event.ErrorSchema

Extracts the error schema from an event definition.

**Signature**

```ts
type ErrorSchema<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Error
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L170)

Since v4.0.0