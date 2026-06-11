Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.HttpBody.Proto

Common protocol implemented by all HTTP body variants.

**Details**

It carries the variant tag plus optional `contentType` and `contentLength` metadata.

**Signature**

```ts
export interface Proto extends Inspectable.Inspectable {
    readonly [TypeId]: typeof TypeId
    readonly _tag: string
    readonly contentType?: string | undefined
    readonly contentLength?: number | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L66)

Since v4.0.0