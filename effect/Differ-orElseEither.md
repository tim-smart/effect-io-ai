# orElseEither

Combines this differ and the specified differ to produce a differ that
knows how to diff the sum of their values.

To import and use `orElseEither` from the "Differ" module:

```ts
import * as Differ from "effect/Differ"
// Can be accessed like this
Differ.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <Value2, Patch2>(
    that: Differ<Value2, Patch2>
  ): <Value, Patch>(
    self: Differ<Value, Patch>
  ) => Differ<Either<Value, Value2>, Differ.Or.Patch<Value, Value2, Patch, Patch2>>
  <Value, Patch, Value2, Patch2>(
    self: Differ<Value, Patch>,
    that: Differ<Value2, Patch2>
  ): Differ<Either<Value, Value2>, Differ.Or.Patch<Value, Value2, Patch, Patch2>>
}
```
