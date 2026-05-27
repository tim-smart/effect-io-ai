Package: `effect`<br />
Module: `Headers`<br />

## Headers.fromRecordUnsafe

Unsafely treats an existing record as `Headers`.

**Gotchas**

This mutates the record's prototype and does not normalize header names; callers must provide the expected lowercase keys.

**Signature**

```ts
declare const fromRecordUnsafe: (input: Record.ReadonlyRecord<string, string>) => Headers
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L262)

Since v4.0.0