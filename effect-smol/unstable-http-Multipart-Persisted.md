Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.Persisted

Record representation of persisted multipart data.

Field names map to text values, arrays of text values, or arrays of
`PersistedFile` values.

**Signature**

```ts
export interface Persisted {
  readonly [key: string]: ReadonlyArray<PersistedFile> | ReadonlyArray<string> | string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L176)

Since v4.0.0