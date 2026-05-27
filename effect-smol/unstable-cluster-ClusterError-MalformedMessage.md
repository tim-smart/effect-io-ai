Package: `effect`<br />
Module: `ClusterError`<br />

## ClusterError.MalformedMessage

Represents an error that occurs when a message fails at a schema
serialization or deserialization boundary.

**Details**

`cause` carries the underlying failure. `refail` maps encode and decode
failures into `MalformedMessage` values.

**Signature**

```ts
declare class MalformedMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterError.ts#L98)

Since v4.0.0