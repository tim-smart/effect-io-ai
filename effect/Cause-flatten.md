# flatten

Flattens a nested `Cause` structure.

**Details**

This function takes a `Cause<Cause<E>>` and merges the layers into a single
`Cause<E>`. It's useful for eliminating additional nesting created by
repeated transformations or compositions.

To import and use `flatten` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.flatten
```

**Signature**

```ts
export declare const flatten: <E>(self: Cause<Cause<E>>) => Cause<E>
```
