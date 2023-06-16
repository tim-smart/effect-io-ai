# asSomeError

This function maps the error value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value succeeds, the returned
`Effect` value will also succeed.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.asSomeError`.

### Signature

```typescript
export declare const asSomeError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Option.Option<E>, A>
```
