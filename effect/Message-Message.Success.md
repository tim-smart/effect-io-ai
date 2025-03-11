## Message.Success

Extracts the success type from a `Message`.

**Signature**

```ts
type Success<S> = S extends Message<infer A, infer _AI, infer _E, infer _EI> ? A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L40)

Since v1.0.0