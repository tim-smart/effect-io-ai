# unsome

Converts an option on errors into an option on values.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const unsome: <R, E, A>(self: Effect<R, Option.Option<E>, A>) => Effect<R, E, Option.Option<A>>
```
