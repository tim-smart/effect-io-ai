Package: `@effect/cluster`<br />
Module: `Message`<br />

## Message.Message.ErrorEncoded

Extracts the error type from a `Message`.

**Signature**

```ts
type ErrorEncoded<S> = S extends Message<infer _A, infer _AI, infer _E, infer _EI> ? _EI : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L64)

Since v1.0.0