Package: `@effect/cluster`<br />
Module: `Message`<br />

## Message.Message.Exit

Extracts the exit type from a `Message`.

**Signature**

```ts
type Exit<S> = S extends Schema.WithResult<infer A, infer _AI, infer E, infer _EI, infer _R> ? Exit_.Exit<A, E>
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Message.ts#L72)

Since v1.0.0