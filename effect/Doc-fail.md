Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.fail

The `fail` document is a document that cannot be rendered.

Generally occurs when flattening a line. The layout algorithms will reject
this document and choose a more suitable rendering.

**Signature**

```ts
declare const fail: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L511)

Since v1.0.0