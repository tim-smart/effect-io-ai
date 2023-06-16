# getOrFailWith

Lifts an `Maybe` into an `Effect`. If the option is not defined, fail with
the specified `e` value.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const getOrFailWith: {
  <E>(error: LazyArg<E>): <A>(option: Option.Option<A>) => Effect<never, E, A>
  <A, E>(option: Option.Option<A>, error: LazyArg<E>): Effect<never, E, A>
}
```
