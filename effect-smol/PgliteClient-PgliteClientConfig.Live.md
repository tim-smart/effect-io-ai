Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.PgliteClientConfig.Live

Configuration that uses an existing PGlite client. The supplied `liveClient` is caller-owned and is not closed by the Effect client.

**Signature**

```ts
export interface Live extends Base {
    readonly liveClient: PGliteInterface
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L136)

Since v4.0.0