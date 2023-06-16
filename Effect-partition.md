# partition

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in a tupled fashion.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.partition`.

### Signature

```typescript
export declare const partition: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, never, [E[], B[]]>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, never, [E[], B[]]>
}
```
