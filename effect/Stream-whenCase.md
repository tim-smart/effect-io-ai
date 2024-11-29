# whenCase

Returns the resulting stream when the given `PartialFunction` is defined
for the given value, otherwise returns an empty stream.

To import and use `whenCase` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.whenCase
undefined

**Signature**

```ts
export declare const whenCase: <A, A2, E, R>(
  evaluate: LazyArg<A>,
  pf: (a: A) => Option.Option<Stream<A2, E, R>>
) => Stream<A2, E, R>
```
