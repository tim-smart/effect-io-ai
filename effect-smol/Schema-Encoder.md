Package: `effect`<br />
Module: `Schema`<br />

## Schema.Encoder

A `Codec` view intended for APIs that only *encode* values.

When to use:
- You want to accept "anything that can encode to `E`", without requiring decoding support.
- You are writing helpers that should not depend on the schema’s decoded `Type`.

**Signature**

```ts
export interface Encoder<out E, out RE = never> extends Codec<unknown, E, unknown, RE> {
  readonly "~rebuild.out": Encoder<E, RE>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L429)

Since v4.0.0