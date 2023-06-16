# unless

The moral equivalent of `if (!p) exp`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const unless: {
  (predicate: LazyArg<boolean>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Option.Option<A>>
  <R, E, A>(self: Effect<R, E, A>, predicate: LazyArg<boolean>): Effect<R, E, Option.Option<A>>
}
```
