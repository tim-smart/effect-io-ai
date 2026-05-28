Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.ParsedSearchParams

Service that contains decoded URL query parameters for the current request.

**When to use**

Use to access query parameters that have already been parsed for the current
server request.

**Details**

Each key maps to a string value, or to an array when the parameter appears more
than once.

**Signature**

```ts
declare class ParsedSearchParams
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L155)

Since v4.0.0