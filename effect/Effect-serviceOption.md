Package: `effect`<br />
Module: `Effect`<br />

## Effect.serviceOption

Retrieves an optional service from the context as an `Option`.

**Details**

This function retrieves a service from the context and wraps it in an
`Option`. If the service is available, it returns a `Some` containing the
service. If the service is not found, it returns a `None`. This approach is
useful when you want to handle the absence of a service gracefully without
causing an error.

**When to Use**

Use this function when:
- You need to access a service that may or may not be present in the context.
- You want to handle the absence of a service using the `Option` type instead
  of throwing an error.

**See**

- `serviceOptional` for a version that throws an error if the service is missing.

**Signature**

```ts
declare const serviceOption: <I, S>(tag: Context.Tag<I, S>) => Effect<Option.Option<S>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7768)

Since v2.0.0