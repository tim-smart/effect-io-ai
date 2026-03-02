Package: `effect`<br />
Module: `Schema`<br />

## Schema.Decoder

A `Codec` view intended for APIs that only *decode* (parse/validate) values.

When to use:
- You want to accept "anything that can decode to `T`", without requiring encoding support.
- You are writing helpers that should not depend on the schema’s `Encoded` representation.

**Signature**

```ts
export interface Decoder<out T, out RD = never> extends Codec<T, unknown, RD, unknown> {
  readonly "~rebuild.out": Decoder<T, RD>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L414)

Since v4.0.0