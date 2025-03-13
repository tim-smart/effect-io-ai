Package: `effect`<br />
Module: `Effect`<br />

## Effect.asSome

This function maps the success value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value fails, the returned
`Effect` value will also fail.

**Signature**

```ts
declare const asSome: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4960)

Since v2.0.0