# cond

Evaluate the predicate, return the given `A` as success if predicate returns
true, and the given `E` as error otherwise

For effectful conditionals, see `ifEffect`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.cond`.

### Signature

```typescript
export declare const cond: <E, A>(
  predicate: LazyArg<boolean>,
  result: LazyArg<A>,
  error: LazyArg<E>
) => Effect<never, E, A>
```
