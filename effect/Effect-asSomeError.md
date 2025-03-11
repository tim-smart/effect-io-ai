## asSomeError

This function maps the error value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value succeeds, the returned
`Effect` value will also succeed.

**Signature**

```ts
declare const asSomeError: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Option.Option<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4970)

Since v2.0.0