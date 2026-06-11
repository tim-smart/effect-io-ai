Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.isEnvelope

Returns `true` when the supplied value is a runtime cluster envelope.

**Details**

The check is based on the envelope type identifier.

**Signature**

```ts
declare const isEnvelope: (u: unknown) => u is Envelope<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L326)

Since v4.0.0