Package: `effect`<br />
Module: `Event`<br />

## Event.AddError

Returns an event definition type whose error schema also includes the provided
error schema.

**Signature**

```ts
type AddError<A, Error> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ? Event<_Tag, _Payload, _Success, _Error | Error>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L178)

Since v4.0.0