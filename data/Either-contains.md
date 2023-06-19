# contains

Returns a function that checks if an `Either` contains a given value using a provided `equivalence` function.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const contains: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): <E>(self: Either<E, A>) => boolean
  <E>(self: Either<E, A>, a: A): boolean
}
```
