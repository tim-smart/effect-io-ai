Package: `effect`<br />
Module: `EventLogEncryption`<br />

## EventLogEncryption.makeEncryptionSubtle

Creates an `EventLogEncryption` service backed by the Web Crypto `SubtleCrypto`
APIs from the supplied `Crypto` implementation.

**Signature**

```ts
declare const makeEncryptionSubtle: (crypto: Crypto) => Effect.Effect<EventLogEncryption["Service"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogEncryption.ts#L99)

Since v4.0.0