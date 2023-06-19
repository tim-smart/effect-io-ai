# left

Constructs a new `Either` holding a `Left` value. This usually represents a failure, due to the right-bias of this
structure.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const left: <E>(e: E) => Either<E, never>
```
