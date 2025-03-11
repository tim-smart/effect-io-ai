## Message.SuccessEncoded

Extracts the success type from a `Message`.

**Signature**

```ts
type SuccessEncoded<S> = S extends Message<infer _A, infer _AI, infer _E, infer _EI> ? _AI : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L48)

Since v1.0.0