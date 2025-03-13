Package: `@effect/cluster`<br />
Module: `Message`<br />

## Message.Message.Error

Extracts the error type from a `Message`.

**Signature**

```ts
type Error<S> = S extends Message<infer _A, infer _AI, infer E, infer _EI> ? E : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L56)

Since v1.0.0