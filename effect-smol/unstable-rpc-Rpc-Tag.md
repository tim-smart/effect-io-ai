Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Tag

Extracts the tag string from an `Rpc`.

**Signature**

```ts
type Tag<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Tag
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L266)

Since v4.0.0