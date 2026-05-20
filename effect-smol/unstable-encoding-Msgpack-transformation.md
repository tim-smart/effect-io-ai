Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.transformation

Schema transformation between MessagePack bytes and decoded values.

**Details**

MessagePack codec failures are converted to `InvalidValue` schema issues.

**Signature**

```ts
declare const transformation: Transformation.Transformation<unknown, Uint8Array<ArrayBuffer>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L348)

Since v4.0.0