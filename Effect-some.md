# some

Converts an option on values into an option on errors.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const some: <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, Option.Option<E>, A>
```
