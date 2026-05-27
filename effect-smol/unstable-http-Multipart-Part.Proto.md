Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.Part.Proto

Common protocol implemented by multipart part values.

**Details**

It provides the multipart type identifier, tag, and inspectable behavior shared
by fields, files, and persisted files.

**Signature**

```ts
export interface Proto extends Inspectable.Inspectable {
    readonly [TypeId]: typeof TypeId
    readonly _tag: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L102)

Since v4.0.0