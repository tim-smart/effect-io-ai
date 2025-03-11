## Brand.RefinementError

Represents an error that occurs when the provided value of the branded type does not pass the refinement predicate.

**Signature**

```ts
export interface RefinementError {
    readonly meta: unknown
    readonly message: string
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L80)

Since v2.0.0