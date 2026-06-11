Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.makeSessionAuthChallenge

Generates a random session authentication challenge using `globalThis.crypto`.

**Signature**

```ts
declare const makeSessionAuthChallenge: Effect.Effect<Uint8Array<ArrayBuffer>, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L485)

Since v4.0.0