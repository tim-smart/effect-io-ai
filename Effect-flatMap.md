# flatMap

This function is a pipeable operator that maps over an `Effect` value,
flattening the result of the mapping function into a new `Effect` value.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const flatMap: {
  <A, R1, E1, B>(f: (a: A) => Effect<R1, E1, B>): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | E, B>
  <R, E, A, R1, E1, B>(self: Effect<R, E, A>, f: (a: A) => Effect<R1, E1, B>): Effect<R | R1, E | E1, B>
}
```
