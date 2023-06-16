# unsome

Converts an option on errors into an option on values.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.unsome`.

### Signature

```typescript
export declare const unsome: <R, E, A>(self: Effect<R, Option.Option<E>, A>) => Effect<R, E, Option.Option<A>>
```
