Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.AnyWithProps

A widened group type that preserves concrete runtime properties such as
identifier, key, top-level status, endpoints, and annotations.

**Signature**

```ts
type AnyWithProps = HttpApiGroup<string, HttpApiEndpoint.AnyWithProps, boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L149)

Since v4.0.0