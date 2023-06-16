# unrefine

Takes some fiber failures and converts them into errors.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const unrefine: {
  <E1>(pf: (u: unknown) => Option.Option<E1>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (u: unknown) => Option.Option<E1>): Effect<R, E | E1, A>
}
```
