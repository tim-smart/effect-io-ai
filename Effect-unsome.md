# unsome

Converts an option on errors into an option on values.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const unsome: <R, E, A>(self: Effect<R, Option.Option<E>, A>) => Effect<R, E, Option.Option<A>>
```
