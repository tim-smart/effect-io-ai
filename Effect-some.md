# some

Converts an option on values into an option on errors.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.some`.

### Signature

```typescript
export declare const some: <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, Option.Option<E>, A>
```
