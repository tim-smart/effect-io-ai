Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.HttpBody.FileLike

Minimal Web `File`-like shape used by HTTP helpers that need file metadata.

**Signature**

```ts
export interface FileLike {
    readonly name: string
    readonly lastModified: number
    readonly size: number
    readonly stream: () => unknown
    readonly type: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L83)

Since v4.0.0