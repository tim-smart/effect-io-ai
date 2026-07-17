Package: `effect`<br />
Module: `Event`<br />

## Event.ToService

Derives the handler service marker for an event definition.

**Signature**

```ts
type ToService<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? EventHandler<_Tag> :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Event.ts#L120)

Since v4.0.0