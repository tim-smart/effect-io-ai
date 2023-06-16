# asSome

This function maps the success value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value fails, the returned
`Effect` value will also fail.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.asSome`.

### Signature

```typescript
export declare const asSome: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Option.Option<A>>
```
