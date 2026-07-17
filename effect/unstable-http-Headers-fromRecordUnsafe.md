Package: `effect`<br />
Module: `Headers`<br />

## Headers.fromRecordUnsafe

Treats an existing record as `Headers` unsafely.

**Gotchas**

This mutates the record's prototype and does not normalize header names; callers must provide the expected lowercase keys.

**Signature**

```ts
declare const fromRecordUnsafe: (input: Record.ReadonlyRecord<string, string>) => Headers
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Headers.ts#L218)

Since v4.0.0