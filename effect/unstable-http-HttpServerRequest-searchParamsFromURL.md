Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.searchParamsFromURL

Converts a `URL` object's search parameters into a record.

**Details**

Repeated parameters are represented as arrays in insertion order.

**Signature**

```ts
declare const searchParamsFromURL: (url: URL) => ReadonlyRecord<string, string | Array<string>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerRequest.ts#L145)

Since v4.0.0