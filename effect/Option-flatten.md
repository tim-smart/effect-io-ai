# flatten

Flattens an `Option` of `Option` into a single `Option`.

**Details**

This function takes an `Option` that wraps another `Option` and flattens it
into a single `Option`. If the outer `Option` is `Some`, the function
extracts the inner `Option`. If the outer `Option` is `None`, the result
remains `None`.

This is useful for simplifying nested `Option` structures that may arise
during functional operations.

To import and use `flatten` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.flatten
```

**Signature**

```ts
export declare const flatten: <A>(self: Option<Option<A>>) => Option<A>
```
