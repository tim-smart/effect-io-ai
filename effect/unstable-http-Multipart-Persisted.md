Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.Persisted

Record representation of persisted multipart data.

**Details**

Field names map to text values, arrays of text values, or arrays of
`PersistedFile` values.

**Signature**

```ts
export interface Persisted {
  readonly [key: string]: ReadonlyArray<PersistedFile> | ReadonlyArray<string> | string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L183)

Since v4.0.0