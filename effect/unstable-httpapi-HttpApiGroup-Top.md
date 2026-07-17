Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Top

A widened group type that preserves concrete runtime properties such as
identifier, key, top-level status, endpoints, and annotations.

**Signature**

```ts
export interface Top extends HttpApiGroup<string, HttpApiEndpoint.Top, boolean> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L185)

Since v4.0.0