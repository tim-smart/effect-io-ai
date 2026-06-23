Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.transformation

Schema for decoding MessagePack bytes into values and encoding values back to
MessagePack bytes.

**Details**

MessagePack codec failures are converted to `InvalidValue` schema issues.

**Signature**

```ts
declare const transformation: SchemaTransformation.Transformation<unknown, Uint8Array<ArrayBuffer>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L343)

Since v4.0.0